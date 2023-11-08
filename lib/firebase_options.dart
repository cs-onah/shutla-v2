// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBTjbwMm_3jQg6-eikSPFnOdnXIkpXSlsc',
    appId: '1:426106152930:web:6acc2b6b14d60937153bbb',
    messagingSenderId: '426106152930',
    projectId: 'shutla-v2',
    authDomain: 'shutla-v2.firebaseapp.com',
    storageBucket: 'shutla-v2.appspot.com',
    measurementId: 'G-SFSJQZFBYX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpWVI4asxHbbx-G_4lzCNLb-NhCBmSV48',
    appId: '1:426106152930:android:26f811af9ea91748153bbb',
    messagingSenderId: '426106152930',
    projectId: 'shutla-v2',
    storageBucket: 'shutla-v2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBeaDeIhb4w8fdXmN9AhWZGPDdaS3sBYys',
    appId: '1:426106152930:ios:f424cae15a31157c153bbb',
    messagingSenderId: '426106152930',
    projectId: 'shutla-v2',
    storageBucket: 'shutla-v2.appspot.com',
    iosBundleId: 'com.csonah.shutla',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBeaDeIhb4w8fdXmN9AhWZGPDdaS3sBYys',
    appId: '1:426106152930:ios:3995e278541f50af153bbb',
    messagingSenderId: '426106152930',
    projectId: 'shutla-v2',
    storageBucket: 'shutla-v2.appspot.com',
    iosBundleId: 'com.csonah.shutlav2.shutlaV2',
  );
}