import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire/firebase_options.dart';
import 'package:flutter_fire/firebase_pushnotification/fcm_notification.dart';
import 'package:flutter_fire/screen/runapp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FcmNotification().init();
  runApp(const RunApp());
}
