import 'package:flutter/material.dart';
import 'package:fluttera/screens/signup.dart';
import './screens/home.dart';
import 'package:fluttera/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/home" : (context) => const Home(),
        "/login" : (context) => const Login(),
        "/signup" : (context) => const Signup()
      },
    );
  }
}