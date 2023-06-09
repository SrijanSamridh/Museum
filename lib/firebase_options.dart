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
    apiKey: 'AIzaSyCQD08XvySPkr9ALJxGZXQxCJQylhj5e7Y',
    appId: '1:806103212799:web:fb272d72eee4bceabda2ca',
    messagingSenderId: '806103212799',
    projectId: 'museum-31273',
    authDomain: 'museum-31273.firebaseapp.com',
    storageBucket: 'museum-31273.appspot.com',
    measurementId: 'G-GBNF0C8Y9S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCT54ze2__sZk88ouaV28vdf2KOF6VwsEQ',
    appId: '1:806103212799:android:46581968307e2087bda2ca',
    messagingSenderId: '806103212799',
    projectId: 'museum-31273',
    storageBucket: 'museum-31273.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYdBXidfXyuLikE0j36wNMk5wKkPD4HO8',
    appId: '1:806103212799:ios:722a1745b54e46f8bda2ca',
    messagingSenderId: '806103212799',
    projectId: 'museum-31273',
    storageBucket: 'museum-31273.appspot.com',
    androidClientId: '806103212799-vv7iq0pvrvtol0rvrrablirblqu1l2ka.apps.googleusercontent.com',
    iosClientId: '806103212799-45oikt175sm3bthk9g1hkk54j7ju0elo.apps.googleusercontent.com',
    iosBundleId: 'com.example.mmuseum',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYdBXidfXyuLikE0j36wNMk5wKkPD4HO8',
    appId: '1:806103212799:ios:722a1745b54e46f8bda2ca',
    messagingSenderId: '806103212799',
    projectId: 'museum-31273',
    storageBucket: 'museum-31273.appspot.com',
    androidClientId: '806103212799-vv7iq0pvrvtol0rvrrablirblqu1l2ka.apps.googleusercontent.com',
    iosClientId: '806103212799-45oikt175sm3bthk9g1hkk54j7ju0elo.apps.googleusercontent.com',
    iosBundleId: 'com.example.mmuseum',
  );
}
