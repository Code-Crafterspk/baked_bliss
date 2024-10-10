import 'dart:developer';

import 'package:baked_bliss/utils/notification/notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FcmNotification {
  static FcmNotification? _instance;
  FcmNotification._();
  factory FcmNotification() {
    assert(_instance != null, 'FcmNotification is not initialized');
    return _instance!;
  }
  static FcmNotification get instance {
    assert(_instance != null, 'FcmNotification is not initialized');
    return _instance!;
  }

  static String? _pushToken;
  static Future<void> init() async {
    try {
      _pushToken ??= await FirebaseMessaging.instance.getToken();
      await FirebaseMessaging.instance.requestPermission();
      FirebaseMessaging.onBackgroundMessage(_fcmBackgroundHandler);
      _instance = FcmNotification._();
    } catch (e) {
      log('Error in FcmNotification: $e');
    }
  }

  @pragma('vm:entry-point')
  static Future<void> _fcmBackgroundHandler(RemoteMessage message) async {
    await NotificationService.showNotification(message);
  }

  String? getToken() {
    return _pushToken;
  }
}
