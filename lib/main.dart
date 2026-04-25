//Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//Material UI
import 'package:flutter/material.dart';
//Páginas Internas
import 'package:pokedex/pages/login_page.dart';
import 'package:pokedex/pages/pokedex.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyABOeHX4P-f5oNiobOjidntfJu0lSwEQ4g",
        authDomain: "pokedex-api-102a9.firebaseapp.com",
        projectId: "pokedex-api-102a9",
        storageBucket: "pokedex-api-102a9.firebasestorage.app",
        messagingSenderId: "593966857248",
        appId: "1:593966857248:android:4fb2ca8c83c2c74890d045"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}