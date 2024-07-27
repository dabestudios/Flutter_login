import 'package:flutter/material.dart';
import 'package:flutter_login/home.dart';
import 'package:flutter_login/your_profile.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Hacker'),
            accountEmail: const Text('hacker.email.com'),
            currentAccountPicture: const CircleAvatar(
              child: FlutterLogo(size: 42.0),
            ),
            decoration: BoxDecoration(color: Colors.blueGrey[800]),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => YourProfileScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          const ListTile(
            leading: Icon(Icons.auto_graph),
            title: Text('Statistics'),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: null,
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Close'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
