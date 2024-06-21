import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBLe1l-nbOEaMRmM6B30AM7GAFHj2S5Kbc",
            authDomain: "clinic-management-mt2ym1.firebaseapp.com",
            projectId: "clinic-management-mt2ym1",
            storageBucket: "clinic-management-mt2ym1.appspot.com",
            messagingSenderId: "833688089189",
            appId: "1:833688089189:web:ecc42975a4c4bdb83c0c8c"));
  } else {
    await Firebase.initializeApp();
  }
}
