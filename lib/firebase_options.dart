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
    apiKey: 'AIzaSyBB3OMZJlr621i2budWZ5o3_g0_LYLRNC4',
    appId: '1:198892425076:web:fa11fc5902f501e30a2621',
    messagingSenderId: '198892425076',
    projectId: 'fir-authandroid-26c49',
    authDomain: 'fir-authandroid-26c49.firebaseapp.com',
    storageBucket: 'fir-authandroid-26c49.appspot.com',
    measurementId: 'G-ESV4PSEP56',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzcUQGHWCIYmtynlQ6b47KabKZ98ETFlY',
    appId: '1:198892425076:android:4fd7e01a6012f84b0a2621',
    messagingSenderId: '198892425076',
    projectId: 'fir-authandroid-26c49',
    storageBucket: 'fir-authandroid-26c49.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGxHIwYxY3xEl6S8WmmnaGtmm-jCeyqcE',
    appId: '1:198892425076:ios:13445b4dadb88d940a2621',
    messagingSenderId: '198892425076',
    projectId: 'fir-authandroid-26c49',
    storageBucket: 'fir-authandroid-26c49.appspot.com',
    iosClientId: '198892425076-agglq11273fogc9id286g0op2lcbvabm.apps.googleusercontent.com',
    iosBundleId: 'com.example.formValidationWithBloc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGxHIwYxY3xEl6S8WmmnaGtmm-jCeyqcE',
    appId: '1:198892425076:ios:13445b4dadb88d940a2621',
    messagingSenderId: '198892425076',
    projectId: 'fir-authandroid-26c49',
    storageBucket: 'fir-authandroid-26c49.appspot.com',
    iosClientId: '198892425076-agglq11273fogc9id286g0op2lcbvabm.apps.googleusercontent.com',
    iosBundleId: 'com.example.formValidationWithBloc',
  );
}
