import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tzl;
import 'package:timezone/timezone.dart' as tz;

class LocalNotificationsService {
  static final _localNotifcation = FlutterLocalNotificationsPlugin();
  static bool notificationsEnabled = false;
  static Future<void> requestPermission() async {
    if (Platform.isIOS || Platform.isMacOS) {
      notificationsEnabled = await _localNotifcation
              .resolvePlatformSpecificImplementation<
                  IOSFlutterLocalNotificationsPlugin>()
              ?.requestPermissions(
                alert: true,
                badge: true,
                sound: true,
              ) ??
          false;

      await _localNotifcation
          .resolvePlatformSpecificImplementation<
              MacOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    } else if (Platform.isAndroid) {
      final androidImplementation =
          _localNotifcation.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      final bool? grantedNotificationPermission =
          await androidImplementation?.requestNotificationsPermission();

      final bool? grantedScheduledNotificationPermission =
          await androidImplementation?.requestExactAlarmsPermission();

      notificationsEnabled = grantedNotificationPermission ?? false;
      notificationsEnabled = grantedScheduledNotificationPermission ?? false;
    }
  }

  static Future<void> init() async {
    final currentTimeZone = await FlutterTimezone.getLocalTimezone();
    tzl.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
    const androidInit = AndroidInitializationSettings('mipmap/ic_launcher');
    const iosInit = DarwinInitializationSettings();
    const notificationInit = InitializationSettings(
      iOS: iosInit,
      android: androidInit,
    );
    await _localNotifcation.initialize(notificationInit);
  }

  static void showNotifications() async {
    const androidDetail = AndroidNotificationDetails(
      'goodChannelId',
      'goodChannelName',
      importance: Importance.max,
      priority: Priority.high,
    );
    const iosDetails = DarwinNotificationDetails();
    const notificationDetails = NotificationDetails(
      iOS: iosDetails,
      android: androidDetail,
    );
    _localNotifcation.show(
        0, 'First Notifications', 'RIcks is dead 🥶', notificationDetails);
  }

  static void showScheduleNotifications() async {
    const androidDetail = AndroidNotificationDetails(
      'goodChannelId',
      'goodChannelName',
      importance: Importance.max,
      priority: Priority.high,
    );
    const iosDetails = DarwinNotificationDetails();
    const notificationDetails = NotificationDetails(
      iOS: iosDetails,
      android: androidDetail,
    );
    _localNotifcation.zonedSchedule(
        0,
        'First Notifications',
        'RIcks is dead 🥶',
        tz.TZDateTime.now(tz.local).add(
          const Duration(seconds: 5),
        ),
        notificationDetails,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }
}
