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
    apiKey: 'AIzaSyDP_4fBV_JRkiq76NsfLr4O1qbEiCtrR7Y',
    appId: '1:340203052281:web:838ad3b213670927705628',
    messagingSenderId: '340203052281',
    projectId: 'whatsappreader',
    authDomain: 'whatsappreader.firebaseapp.com',
    storageBucket: 'whatsappreader.appspot.com',
    measurementId: 'G-W075W1ZPQS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDwCthgV8zoldTu8SvWQ1QB1x3zKjGQMqg',
    appId: '1:340203052281:android:5c83d3fca1c02e79705628',
    messagingSenderId: '340203052281',
    projectId: 'whatsappreader',
    storageBucket: 'whatsappreader.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDmVYmrdY2fPVOBrGOjgkEGSFW89UwmtJ0',
    appId: '1:340203052281:ios:efab32a676a4a4ac705628',
    messagingSenderId: '340203052281',
    projectId: 'whatsappreader',
    storageBucket: 'whatsappreader.appspot.com',
    androidClientId: '340203052281-rqqkma1g7imvrg789hvqq9as0hafqkp3.apps.googleusercontent.com',
    iosBundleId: 'com.example.sample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDmVYmrdY2fPVOBrGOjgkEGSFW89UwmtJ0',
    appId: '1:340203052281:ios:3a0cec1de8130315705628',
    messagingSenderId: '340203052281',
    projectId: 'whatsappreader',
    storageBucket: 'whatsappreader.appspot.com',
    androidClientId: '340203052281-rqqkma1g7imvrg789hvqq9as0hafqkp3.apps.googleusercontent.com',
    iosBundleId: 'com.example.sample.RunnerTests',
  );
}
