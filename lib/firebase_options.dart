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
    apiKey: 'AIzaSyBBBTef6Z31XJqPjSXe-lG9z1jJpW1Lbak',
    appId: '1:133998405674:web:25fe220d5c065a8538bb53',
    messagingSenderId: '133998405674',
    projectId: 'ithildin-b184e',
    authDomain: 'ithildin-b184e.firebaseapp.com',
    storageBucket: 'ithildin-b184e.appspot.com',
    measurementId: 'G-945HD3C188',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtgtSqHR5eKnPfNysoKsH90q_oWtCcmfQ',
    appId: '1:133998405674:android:3340289e5cbb3ae138bb53',
    messagingSenderId: '133998405674',
    projectId: 'ithildin-b184e',
    storageBucket: 'ithildin-b184e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_Zt3UqIqw0MHITLBLH2_p5oMM7ccf1dE',
    appId: '1:133998405674:ios:24ec97d92b2748dd38bb53',
    messagingSenderId: '133998405674',
    projectId: 'ithildin-b184e',
    storageBucket: 'ithildin-b184e.appspot.com',
    iosClientId: '133998405674-qnv0fq6l6qlc2cqm7tllu42sh7k52mbf.apps.googleusercontent.com',
    iosBundleId: 'com.example.ithildin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_Zt3UqIqw0MHITLBLH2_p5oMM7ccf1dE',
    appId: '1:133998405674:ios:24ec97d92b2748dd38bb53',
    messagingSenderId: '133998405674',
    projectId: 'ithildin-b184e',
    storageBucket: 'ithildin-b184e.appspot.com',
    iosClientId: '133998405674-qnv0fq6l6qlc2cqm7tllu42sh7k52mbf.apps.googleusercontent.com',
    iosBundleId: 'com.example.ithildin',
  );
}
