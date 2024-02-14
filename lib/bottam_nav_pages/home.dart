import 'package:flutter/material.dart';
import 'package:foxtradeappnew/profile.dart';
import 'package:foxtradeappnew/setting.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: const Text('Home'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Notification',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('Welcome to Foxtrade'),
        ),
      ),
    );
  }
}
