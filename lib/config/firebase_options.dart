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
    apiKey: 'AIzaSyAEymJRw_jxj17BuwDpCeoAlAwynK5dy_g',
    appId: '1:530850068371:web:758974a16454af4d391a66',
    messagingSenderId: '530850068371',
    projectId: 'pickar-app',
    authDomain: 'pickar-app.firebaseapp.com',
    storageBucket: 'pickar-app.appspot.com',
    measurementId: 'G-N892MWHPX7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNnqs_YWYd9ut56rrsR1PJvww6A85wIxg',
    appId: '1:530850068371:android:45cbb1499d0f00cb391a66',
    messagingSenderId: '530850068371',
    projectId: 'pickar-app',
    storageBucket: 'pickar-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUMGKBs0SeGohOpfJBoNaKBRwf6B4LE-c',
    appId: '1:530850068371:ios:c18d871460af3288391a66',
    messagingSenderId: '530850068371',
    projectId: 'pickar-app',
    storageBucket: 'pickar-app.appspot.com',
    iosBundleId: 'com.example.pickarApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAUMGKBs0SeGohOpfJBoNaKBRwf6B4LE-c',
    appId: '1:530850068371:ios:ff32d9408ff5b1fc391a66',
    messagingSenderId: '530850068371',
    projectId: 'pickar-app',
    storageBucket: 'pickar-app.appspot.com',
    iosBundleId: 'com.example.pickarApp.RunnerTests',
  );
}
