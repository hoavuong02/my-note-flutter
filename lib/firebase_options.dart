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
    apiKey: 'AIzaSyBrV-nV1J4qAo_JYccA9nCQTtGjuyXJiCQ',
    appId: '1:398969374134:web:06faaf86c75909bad22d17',
    messagingSenderId: '398969374134',
    projectId: 'myapp02-523ad',
    authDomain: 'myapp02-523ad.firebaseapp.com',
    storageBucket: 'myapp02-523ad.appspot.com',
    measurementId: 'G-Z531TR2H5J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAdaMX1bcqo79h02FHcJ--Vdn4cC5FVNP8',
    appId: '1:398969374134:android:c0c645a7a08709a5d22d17',
    messagingSenderId: '398969374134',
    projectId: 'myapp02-523ad',
    storageBucket: 'myapp02-523ad.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTou2kDSS4gezj29CkI8F7Fl7NZK_1xXA',
    appId: '1:398969374134:ios:71ad2af727fd0bf8d22d17',
    messagingSenderId: '398969374134',
    projectId: 'myapp02-523ad',
    storageBucket: 'myapp02-523ad.appspot.com',
    iosClientId: '398969374134-ld7u0ifktlb75ih90nt45kgep0nev2js.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTou2kDSS4gezj29CkI8F7Fl7NZK_1xXA',
    appId: '1:398969374134:ios:71ad2af727fd0bf8d22d17',
    messagingSenderId: '398969374134',
    projectId: 'myapp02-523ad',
    storageBucket: 'myapp02-523ad.appspot.com',
    iosClientId: '398969374134-ld7u0ifktlb75ih90nt45kgep0nev2js.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );
}
