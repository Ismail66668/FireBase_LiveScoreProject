// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBeyea0c3XH5jknu-9iONe4WgcPzCehrPU',
    appId: '1:757645948877:web:f2188e7ba0bc3cb0167684',
    messagingSenderId: '757645948877',
    projectId: 'flutter-fire-d7257',
    authDomain: 'flutter-fire-d7257.firebaseapp.com',
    storageBucket: 'flutter-fire-d7257.firebasestorage.app',
    measurementId: 'G-812XE77GHQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD20ZVMzyd0mE9p6NgRl5cUh0HdsQJNNMU',
    appId: '1:757645948877:android:85690fa0435b3c49167684',
    messagingSenderId: '757645948877',
    projectId: 'flutter-fire-d7257',
    storageBucket: 'flutter-fire-d7257.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBeyea0c3XH5jknu-9iONe4WgcPzCehrPU',
    appId: '1:757645948877:web:85ef5f68063be0c8167684',
    messagingSenderId: '757645948877',
    projectId: 'flutter-fire-d7257',
    authDomain: 'flutter-fire-d7257.firebaseapp.com',
    storageBucket: 'flutter-fire-d7257.firebasestorage.app',
    measurementId: 'G-7J94GQB3DP',
  );
}
