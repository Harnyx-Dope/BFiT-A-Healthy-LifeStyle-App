// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members, depend_on_referenced_packages
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
    apiKey: 'AIzaSyBLHdgjGWELwJ3fOpTYekoip94jF6cdWYw',
    appId: '1:648551378614:web:0d248cd04d13c4a5ba8017',
    messagingSenderId: '648551378614',
    projectId: 'crud-app-b7430',
    authDomain: 'crud-app-b7430.firebaseapp.com',
    storageBucket: 'crud-app-b7430.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBvLKQ_UxlZlZKEuKEwW0O319ByXOELeOw',
    appId: '1:648551378614:android:e74dddfccc148c4eba8017',
    messagingSenderId: '648551378614',
    projectId: 'crud-app-b7430',
    storageBucket: 'crud-app-b7430.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHZYzWUebiPDC_Uko8oehOdr-no3cvgLs',
    appId: '1:648551378614:ios:bdef41c69657a91eba8017',
    messagingSenderId: '648551378614',
    projectId: 'crud-app-b7430',
    storageBucket: 'crud-app-b7430.appspot.com',
    iosClientId:
        '648551378614-lsj4iha1unoilnsl3i0o5ir7ll2g5q13.apps.googleusercontent.com',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHZYzWUebiPDC_Uko8oehOdr-no3cvgLs',
    appId: '1:648551378614:ios:bdef41c69657a91eba8017',
    messagingSenderId: '648551378614',
    projectId: 'crud-app-b7430',
    storageBucket: 'crud-app-b7430.appspot.com',
    iosClientId:
        '648551378614-lsj4iha1unoilnsl3i0o5ir7ll2g5q13.apps.googleusercontent.com',
    iosBundleId: 'com.example.project',
  );
}
