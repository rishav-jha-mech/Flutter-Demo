import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is a title"),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}