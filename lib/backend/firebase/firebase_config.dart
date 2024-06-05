import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBmwHPaKT2s2AjxHdGCAq96GHc_Bjsohw4",
            authDomain: "boreal-conquest-425406-e0.firebaseapp.com",
            projectId: "boreal-conquest-425406-e0",
            storageBucket: "boreal-conquest-425406-e0.appspot.com",
            messagingSenderId: "870331328943",
            appId: "1:870331328943:web:0fd7a096bb4859718ae75a",
            measurementId: "G-GQS59W9TTF"));
  } else {
    await Firebase.initializeApp();
  }
}
