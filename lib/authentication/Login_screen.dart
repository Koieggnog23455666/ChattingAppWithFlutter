import'package:flutter/material.dart';

import '../main.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    mq=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(
        children: [
          Positioned(
              left: mq.width*.26,
              top: mq.height*.23,
              width:mq.width* .5,
              child: Image.asset('image/photo.png')) ,
          Positioned(
              width:mq.width*.9,
              height: mq.height*.07,
              left: mq.width*.05,
              bottom: mq.height*.20,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                ),
            onPressed: (){},
            icon: Image.asset('image/google.png',height: mq.height*.05,),
                label: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: 'Sign In with '),
                      TextSpan(text: 'Google',style: TextStyle(fontWeight: FontWeight.bold) )
                    ]
                  ),
                ),
          ))
        ],
      ),

    );
  }
}
