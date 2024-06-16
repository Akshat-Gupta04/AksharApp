import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBfDX6qrpmyQbwBKa8ElQPXam02EGHzQZI",
            authDomain: "akshar-409f0.firebaseapp.com",
            projectId: "akshar-409f0",
            storageBucket: "akshar-409f0.appspot.com",
            messagingSenderId: "3885247249",
            appId: "1:3885247249:web:204bdc7789673982f7fab0"));
  } else {
    await Firebase.initializeApp();
  }
}
