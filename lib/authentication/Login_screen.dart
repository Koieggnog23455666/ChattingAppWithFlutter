import 'package:chatting_app_with_firebase/screens/home_screen.dart';
import'package:flutter/material.dart';

import '../main.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
 var _isanimated=0;
  @override

  void initState() {
    super.initState();
           Future.delayed(Duration(milliseconds: 500),(){
             setState(() {
               _isanimated=1;
             });
           });
  }
  Widget build(BuildContext context) {
    mq=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(
        children: [
          Positioned(
             right: mq.width*.25 ,
            top: mq.height*.23, 
            width:mq.width* .5,
            child: AnimatedOpacity(
                duration: Duration(milliseconds: 1500),
                opacity: _isanimated==0?0:1,
                child: Image.asset('image/photo.png')),
          ) ,
          Positioned(
              width:mq.width*.9,
              height: mq.height*.07,
              left: mq.width*.05,
              bottom: mq.height*.20,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                ),
            onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen())) ;
            },
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
