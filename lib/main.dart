import 'package:chatting_app_with_firebase/authentication/Login_screen.dart';
import 'package:chatting_app_with_firebase/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
late Size mq;

void main() {
  _intializeFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatRoom',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
          iconTheme: IconThemeData(
            color: Colors.white
          )
        )
      ),
      home: const LoginScreen(),
    );
  }
}
_intializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

