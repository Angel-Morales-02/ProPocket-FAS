import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBEkHiMtefzq7ZQ97HlocCQf7PdUEgyKW8",
            authDomain: "proyecto-propocket-03nbid.firebaseapp.com",
            projectId: "proyecto-propocket-03nbid",
            storageBucket: "proyecto-propocket-03nbid.firebasestorage.app",
            messagingSenderId: "757090977358",
            appId: "1:757090977358:web:31e806b8f605925107651f"));
  } else {
    await Firebase.initializeApp();
  }
}
