import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {
  static Future<void> init() async {
    final notificationPlugin = FlutterLocalNotificationsPlugin();
    var initializationSettings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    await notificationPlugin.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse: _handleNotificationAction,
    );
  }

  @pragma('vm:entry-point')
  static Future<void> showNotification(RemoteMessage? remoteMessage) async {}

  @pragma('vm:entry-point')
  static Future<void> _handleNotificationAction(
      NotificationResponse? message) async {}
}
