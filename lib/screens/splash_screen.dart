import 'package:chatting_app_with_firebase/authentication/Login_screen.dart';
import'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 1000),(){
      setState(() {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));

      });
    });
  }
  Widget build(BuildContext context){
    mq=MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
              right: mq.width*.25 ,
              top: mq.height*.23,
              width:mq.width* .5,
              child: Image.asset('image/photo.png')),
          Positioned(
              bottom: mq.height*.20,
              left: mq.width*.40,
              child: Text('Krishna rai',style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}
