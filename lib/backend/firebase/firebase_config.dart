import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC_yytG65XMjsg4raxto3AuLPkiyaLSGEs",
            authDomain: "greensol-app.firebaseapp.com",
            projectId: "greensol-app",
            storageBucket: "greensol-app.appspot.com",
            messagingSenderId: "1074878859898",
            appId: "1:1074878859898:web:50bf7aa0c4c6019fed49c3",
            measurementId: "G-8QZMECN45N"));
  } else {
    await Firebase.initializeApp();
  }
}
