import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCxYynUABWdDdFRtkAYGhjQwVK2H79pbPA",
            authDomain: "pickngo-58375.firebaseapp.com",
            projectId: "pickngo-58375",
            storageBucket: "pickngo-58375.appspot.com",
            messagingSenderId: "229866498296",
            appId: "1:229866498296:web:8b18ea0c463eb7573c330d",
            measurementId: "G-MHENDQF65X"));
  } else {
    await Firebase.initializeApp();
  }
}
