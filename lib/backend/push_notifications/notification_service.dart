import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// import 'package:local_notifications/main.dart';
int id = 1;

String GROUP_KEY_PICKNGO = "com.pickngoapp.group";

class Notification_Service {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

 
  Future<void> showNotification(RemoteMessage message) async {
      String channelId = 'Pickngo_Notification';
        String channelName = 'Pickngo Notifications';

    AndroidNotificationChannel channel = AndroidNotificationChannel(
      channelId,
      channelName,
      importance: Importance.max,
      playSound: true,
    );

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      channel.id,
      channel.name,
      channelDescription: 'Channel for $channelName notifications',
      importance: Importance.high,
      priority: Priority.high,
      playSound: true,
      ticker: 'ticker',
      ongoing: true,
      autoCancel: false,
      icon: '@mipmap/ic_launcher',
      // sound: notificationSound != null
      //     ? RawResourceAndroidNotificationSound(notificationSound)
      //     : null,
      sound: const RawResourceAndroidNotificationSound('customsound'),
      
     
    );

    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      message.notification!.title,
      message.notification!.body,
      notificationDetails,
    );
  }
  Future<void> showFirebaseNotification(BuildContext context) async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      id = id + 1;
      print('Notification ID: $id');

      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      final data = message.data; // Notification data
      print("Notification data: $data");
      print('Notification content: $notification');

      if (notification != null && android != null) {
        String channelId = 'Pickngo_Notification';
        String channelName = 'Pickngo Notifications';

     

        print('Channel ID: $channelId, Channel Name: $channelName');
        String curr_channel = channelId;

        print('curr_channel : $curr_channel');
        AwesomeNotifications().createNotification(
          content: NotificationContent(
            id: id,
            channelKey: curr_channel,
            title: notification.title,
            body: notification.body,
            groupKey: curr_channel,
            autoDismissible: false,
            displayOnBackground: true,
            displayOnForeground: true,
            // bigPicture: data['imgurl'],
            // largeIcon: data['imgurl'],
            hideLargeIconOnExpand: true,
            // notificationLayout: data['imgurl'] != null
            //     ? NotificationLayout.BigPicture
            //     : NotificationLayout.Default,
            // customSound: notificationSound != null
            //     ? 'resource://raw/customsound'
            //     : null,
            customSound: 'resource://raw/customsound'
          ),
        );

      }
    });

   
  }


}