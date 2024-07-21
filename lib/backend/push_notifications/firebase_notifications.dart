import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationServices {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initialize() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    final fcmToken = await _firebaseMessaging.getToken();
    //use fcm token to send notifications to a specific device
    print(fcmToken);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }

  void handleMessage(RemoteMessage? message) {
    //if any specific routing needs to be done based on the message implement here
    if (message == null) {
      return;
    }
  }
}

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  //for pushing the notification to the device and handling here
  print("Handling a background message: ${message.data}");
}
