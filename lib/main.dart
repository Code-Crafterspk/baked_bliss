import 'package:baked_bliss/dependency.dart';
import 'package:baked_bliss/firebase_options.dart';
import 'package:baked_bliss/routing/routing.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:baked_bliss/utils/helper/network_info.dart';
import 'package:baked_bliss/utils/notification/fcm_notification.dart';
import 'package:baked_bliss/utils/notification/notification_service.dart';
import 'package:baked_bliss/utils/theme/text/text_theme.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FcmNotification.init();
  NetworkInfo.init(Connectivity());
  await NotificationService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      getPages: Routing.getPages,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        textTheme: AppTextTheme.mulishTextTheme,
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
    );
  }
}
