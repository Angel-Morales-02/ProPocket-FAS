import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAoJBeHNIP5fGmKX7bKY1JaOa_AMFNpUzY",
            authDomain: "propocket-89477.firebaseapp.com",
            projectId: "propocket-89477",
            storageBucket: "propocket-89477.firebasestorage.app",
            messagingSenderId: "510324418431",
            appId: "1:510324418431:web:57fb2aeeaf37b7a418dc4a",
            measurementId: "G-JZRSZHDC6B"));
  } else {
    await Firebase.initializeApp();
  }
}
