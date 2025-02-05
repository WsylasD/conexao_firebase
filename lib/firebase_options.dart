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
    apiKey: 'AIzaSyCDtw_ceUckeBNehH-Hkno98wMPCsQBIl0',
    appId: '1:66227889442:web:48e5fea7fd9ecf8d0e317b',
    messagingSenderId: '66227889442',
    projectId: 'aula-flutter-7b863',
    authDomain: 'aula-flutter-7b863.firebaseapp.com',
    storageBucket: 'aula-flutter-7b863.firebasestorage.app',
    measurementId: 'G-VPDDG1W4RT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGZ2aOdsMjCXIt-C9tFoFvWmhhYG0FH9o',
    appId: '1:66227889442:android:d0ddedfa44c875c10e317b',
    messagingSenderId: '66227889442',
    projectId: 'aula-flutter-7b863',
    storageBucket: 'aula-flutter-7b863.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASplZ4z6l5uuLUVPOAMECz4z76NM2QKp0',
    appId: '1:66227889442:ios:85211c89857b6ab50e317b',
    messagingSenderId: '66227889442',
    projectId: 'aula-flutter-7b863',
    storageBucket: 'aula-flutter-7b863.firebasestorage.app',
    iosBundleId: 'com.example.firebaseConection',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASplZ4z6l5uuLUVPOAMECz4z76NM2QKp0',
    appId: '1:66227889442:ios:85211c89857b6ab50e317b',
    messagingSenderId: '66227889442',
    projectId: 'aula-flutter-7b863',
    storageBucket: 'aula-flutter-7b863.firebasestorage.app',
    iosBundleId: 'com.example.firebaseConection',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCDtw_ceUckeBNehH-Hkno98wMPCsQBIl0',
    appId: '1:66227889442:web:869a829a3806fa2f0e317b',
    messagingSenderId: '66227889442',
    projectId: 'aula-flutter-7b863',
    authDomain: 'aula-flutter-7b863.firebaseapp.com',
    storageBucket: 'aula-flutter-7b863.firebasestorage.app',
    measurementId: 'G-1R6YJY78ZX',
  );
}
