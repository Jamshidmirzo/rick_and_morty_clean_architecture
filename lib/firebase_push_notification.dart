// ignore_for_file: unused_local_variable

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rick_and_morty/local_notifications_service.dart';

class FirebasePushNotification {
  static final _pushNotifications = FirebaseMessaging.instance;

  static Future<void> init() async {
    final notificationSettings = await _pushNotifications.requestPermission();
    final fsmToken = await _pushNotifications.getToken();

    FirebaseMessaging.onMessageOpenedApp.listen((message) {});

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        LocalNotificationsService.showNotifications();
      }
    });
  }
}
