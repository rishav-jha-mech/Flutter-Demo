import 'package:flutter/material.dart';
import '../components//mydrawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: const Color(0xff0066FF),
        elevation: 0,

      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text("This is the Home Page"),
      ),
    );
  }
}
