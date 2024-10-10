import 'package:baked_bliss/utils/helper/network_info.dart';
import 'package:baked_bliss/utils/local_database/local_database.dart';
import 'package:baked_bliss/utils/notification/fcm_notification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/instance_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => FcmNotification())
      ..lazyPut(() => Client())
      ..lazyPut(() => NetworkInfo())
      ..lazyPut(() => FirebaseAuth.instance)
      ..lazyPut(() => GoogleSignIn())
      ..lazyPut(() => FacebookAuth.instance)
      ..lazyPut(() => AppDatabase());
  }
}
