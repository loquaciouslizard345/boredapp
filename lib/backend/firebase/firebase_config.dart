import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCHUZbyhPmj8oC26qmOYLl5cvWoHUMh6hE",
            authDomain: "boredapp-b16ae.firebaseapp.com",
            projectId: "boredapp-b16ae",
            storageBucket: "boredapp-b16ae.appspot.com",
            messagingSenderId: "775976462586",
            appId: "1:775976462586:web:524d0ce54ea3d0bb59c143",
            measurementId: "G-77NZ7SX9M9"));
  } else {
    await Firebase.initializeApp();
  }
}
