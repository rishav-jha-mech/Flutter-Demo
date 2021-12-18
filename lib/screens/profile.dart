import 'package:flutter/material.dart';
import '../components/mydrawer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: const Color(0xff0066FF),
      ),
      body: const Center(
        child: Text("This is user profile page"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
