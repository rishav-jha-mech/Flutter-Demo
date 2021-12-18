import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttera/screens/favorities.dart';
import 'package:fluttera/screens/home.dart';
import 'package:fluttera/screens/profile.dart';
import 'package:fluttera/screens/settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const name = "Rishav Jha";

    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff0066FF),
            ),
            accountName: Text(
              name,
              style: TextStyle(fontSize: 18),
            ),
            accountEmail: Text(
              "rishav.rj74@gmail.com",
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/brand.jpg"),
            ),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.home),
            title: Container(
              transform: Matrix4.translationValues(-16.0, 0.0, 0.0),
              child: const Text("Home"),
            ),
            hoverColor: Colors.blue,
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()))
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.profile_circled),
            title: Container(
              transform: Matrix4.translationValues(-16.0, 0.0, 0.0),
              child: const Text("Profile"),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ),
              ),
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.heart),
            title: Container(
              transform: Matrix4.translationValues(-16.0, 0.0, 0.0),
              child: const Text("Favourites"),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Favorities(),
                ),
              ),
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.gear_solid),
            title: Container(
              transform: Matrix4.translationValues(-16.0, 0.0, 0.0),
              child: const Text("Settings"),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ),
              ),
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: Container(
              transform: Matrix4.translationValues(-16.0, 0.0, 0.0),
              child: const Text("Logout"),
            ),
          ),
        ],
      ),
    );
  }
}
