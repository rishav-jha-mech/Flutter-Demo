import 'package:flutter/material.dart';
import '../components/mydrawer.dart';

class Favorities extends StatefulWidget {
  const Favorities({Key? key}) : super(key: key);

  @override
  _FavoritiesState createState() => _FavoritiesState();
}

class _FavoritiesState extends State<Favorities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourities"),
        centerTitle: true,
        backgroundColor: const Color(0xff0066FF),
      ),
      body: const Center(
        child: Text("This is Favourities page"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
