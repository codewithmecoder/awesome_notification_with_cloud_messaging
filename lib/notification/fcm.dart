import 'package:awesome_notification_with_cloud_messaging/notification/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FCM {
  Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await Firebase.initializeApp();
    await createPlantFoodNotification();
    debugPrint('message => ${message.data}');
    debugPrint("Handling a background message: ${message.messageId}");
  }

  setUpFCM() {
    _getClientToken();
    _messageOnforgeGround();
    FirebaseMessaging.onBackgroundMessage(
      _firebaseMessagingBackgroundHandler,
    );
  }

  _messageOnforgeGround() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      debugPrint('Got a message whilst in the foreground!');
      debugPrint('Message data: ${message.data}');
      await createPlantFoodNotification();
      if (message.notification != null) {
        // await createPlantFoodNotification();
        debugPrint(
            'Message also contained a notification: ${message.notification}');
      }
    });
  }

  // final fcmToken = await messaging.getToken();
  // debugPrint('fcmToken => $fcmToken');
  Future<String?> _getClientToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    debugPrint('fcmToken => $fcmToken');
    return fcmToken;
  }
}
