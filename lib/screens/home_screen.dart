import'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('ChatRoom',),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))],
      ),
      body: Scaffold(
        backgroundColor: Colors.black87,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(onPressed: (){},child: Icon(Icons.message,color: Colors.black,),backgroundColor: Colors.greenAccent,),
      ),
    );
  }
}
