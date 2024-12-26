import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCa_ES4tsAWcNjgrBNJ2n0l6FdrEhYPfVY",
      authDomain: "fir-loginpage-da860.firebaseapp.com",
      projectId: "fir-loginpage-da860",
      storageBucket: "fir-loginpage-da860.appspot.com",
      messagingSenderId: "310222555613",
      appId: "1:310222555613:web:63d9819c302dcd4a890e34",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const LoginPage(),
    );
  }
}
