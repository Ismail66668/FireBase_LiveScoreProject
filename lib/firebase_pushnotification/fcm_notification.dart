import 'package:firebase_messaging/firebase_messaging.dart';

class FcmNotification {
  Future<void> init() async {
    await FirebaseMessaging.instance.requestPermission();
    FirebaseMessaging.instance.getInitialMessage();

    FirebaseMessaging.onMessage.listen(_handelNotification);
    FirebaseMessaging.onMessageOpenedApp.listen(_handelNotification);

    FirebaseMessaging.onBackgroundMessage(_onNotification);
  }

  void _handelNotification(RemoteMessage massage) {
    String handelMassage = '''
     Title : ${massage.notification?.title},
     Body : ${massage.notification?.body},
     Data : ${massage.data},
    ''';
    print(handelMassage);
//
  }
}

Future<void> _onNotification(RemoteMessage massage) async {
  //
}
