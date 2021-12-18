import 'package:flutter/material.dart';
import 'package:fluttera/components/mydrawer.dart';


class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        backgroundColor: const Color(0xff0066FF),
      ),
      body: const Center(
        child: Text("This is Settings page"),
      ),
      drawer: const MyDrawer(),
    );
  }
}