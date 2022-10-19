// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDX4K0p43h0HNH_EexPPCBb0wyjKvQumDM',
    appId: '1:63077418882:web:133121f7c89f4664d8f19b',
    messagingSenderId: '63077418882',
    projectId: 'awesome-notification-with-fcm',
    authDomain: 'awesome-notification-with-fcm.firebaseapp.com',
    storageBucket: 'awesome-notification-with-fcm.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSqywuBKSjrSpsGge4LyTTTkznMDBv6lw',
    appId: '1:63077418882:android:27d081b6f55c77c4d8f19b',
    messagingSenderId: '63077418882',
    projectId: 'awesome-notification-with-fcm',
    storageBucket: 'awesome-notification-with-fcm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJ8dtFuUBo_fxKe4xrzlbF-CBX4TOd-vE',
    appId: '1:63077418882:ios:f4313e985f815902d8f19b',
    messagingSenderId: '63077418882',
    projectId: 'awesome-notification-with-fcm',
    storageBucket: 'awesome-notification-with-fcm.appspot.com',
    iosClientId: '63077418882-11nm956fari4gbt2p4nidul3a1eg5h43.apps.googleusercontent.com',
    iosBundleId: 'com.example.awesomeNotificationWithCloudMessaging',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJ8dtFuUBo_fxKe4xrzlbF-CBX4TOd-vE',
    appId: '1:63077418882:ios:f4313e985f815902d8f19b',
    messagingSenderId: '63077418882',
    projectId: 'awesome-notification-with-fcm',
    storageBucket: 'awesome-notification-with-fcm.appspot.com',
    iosClientId: '63077418882-11nm956fari4gbt2p4nidul3a1eg5h43.apps.googleusercontent.com',
    iosBundleId: 'com.example.awesomeNotificationWithCloudMessaging',
  );
}