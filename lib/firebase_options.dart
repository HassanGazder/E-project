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
    apiKey: 'AIzaSyDytgGVD1KdecOeLFmvyCHuT0d261THjQc',
    appId: '1:60127147328:web:fcb436702349325ec576a5',
    messagingSenderId: '60127147328',
    projectId: 'eproject-a6a29',
    authDomain: 'eproject-a6a29.firebaseapp.com',
    storageBucket: 'eproject-a6a29.appspot.com',
    measurementId: 'G-L604PYFL3P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD9JTvtWsVzFhLC9DmfHuWmYNCccO_Lmq0',
    appId: '1:60127147328:android:86d3a393118cd52bc576a5',
    messagingSenderId: '60127147328',
    projectId: 'eproject-a6a29',
    storageBucket: 'eproject-a6a29.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzs89XOBxG5PIqIdNI04VQ89YykjHWOmo',
    appId: '1:60127147328:ios:6bcb916e10b6c58bc576a5',
    messagingSenderId: '60127147328',
    projectId: 'eproject-a6a29',
    storageBucket: 'eproject-a6a29.appspot.com',
    iosBundleId: 'com.example.images',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAzs89XOBxG5PIqIdNI04VQ89YykjHWOmo',
    appId: '1:60127147328:ios:3304950567f5664ec576a5',
    messagingSenderId: '60127147328',
    projectId: 'eproject-a6a29',
    storageBucket: 'eproject-a6a29.appspot.com',
    iosBundleId: 'com.example.images.RunnerTests',
  );
}
