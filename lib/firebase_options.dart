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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyCMazrn3qI9npvUfWlgIVUFlmp6ZolV4DU',
    appId: '1:85539749575:web:09dcbc35b4c4c75a2608e2',
    messagingSenderId: '85539749575',
    projectId: 'practice-auth-26b7c',
    authDomain: 'practice-auth-26b7c.firebaseapp.com',
    storageBucket: 'practice-auth-26b7c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMe_bFTr7jGUAZh-4YR5iAYXfD5FkTfZE',
    appId: '1:85539749575:android:d2937a644fa86b1a2608e2',
    messagingSenderId: '85539749575',
    projectId: 'practice-auth-26b7c',
    storageBucket: 'practice-auth-26b7c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBtZqMLyXSFHzllPs2ddwwuyvzPB-WG5HM',
    appId: '1:85539749575:ios:18e0c213c01b0ad02608e2',
    messagingSenderId: '85539749575',
    projectId: 'practice-auth-26b7c',
    storageBucket: 'practice-auth-26b7c.appspot.com',
    iosBundleId: 'com.example.flutterApplication5',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBtZqMLyXSFHzllPs2ddwwuyvzPB-WG5HM',
    appId: '1:85539749575:ios:18e0c213c01b0ad02608e2',
    messagingSenderId: '85539749575',
    projectId: 'practice-auth-26b7c',
    storageBucket: 'practice-auth-26b7c.appspot.com',
    iosBundleId: 'com.example.flutterApplication5',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCMazrn3qI9npvUfWlgIVUFlmp6ZolV4DU',
    appId: '1:85539749575:web:7086451e96f721602608e2',
    messagingSenderId: '85539749575',
    projectId: 'practice-auth-26b7c',
    authDomain: 'practice-auth-26b7c.firebaseapp.com',
    storageBucket: 'practice-auth-26b7c.appspot.com',
  );

}