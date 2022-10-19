using FirebaseAdmin.Messaging;
using Microsoft.AspNetCore.Mvc;

namespace test_push_notification_fcm.Controllers;

[ApiController]
[Route("[controller]")]
public class PushNotificationFCMController : ControllerBase
{

    [HttpPost]
    public async Task<ActionResult> PushNotification()
    {
        var registrationToken = "fgfOPRTyS-CquiSFmsI7_k:APA91bGrLvRVRkNyaWucMS5487EeM7M9lIxepOgdkT9ETLVXIChAQBOj2qqC1MBbYSaQ-PXpxbVe7ck2Id_-cUvfoV4YYsPCSqWSe92PNEHCDXQfAx0Y04rwwgiAG8oKUAq7f1RRT1j1";
        var message = new Message()
        {
            Data = new Dictionary<string, string>()
            {
                { "score", "850" },
                { "time", "2:45" },
            },
            Token = registrationToken,
        };

        // Send a message to the device corresponding to the provided
        // registration token.
        string response = await FirebaseMessaging.DefaultInstance.SendAsync(message);
        // Response is a message ID string.
        Console.WriteLine("Successfully sent message: " + response);
        return Ok(response);
    }
}
