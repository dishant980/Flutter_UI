import 'package:flutter/material.dart';
import 'package:foxtradeappnew/profile.dart';
import 'package:foxtradeappnew/setting.dart';


class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
          return SingleChildScrollView(
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Menu'),
                centerTitle: true,
                 leading: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
            ), actions: [
              IconButton(
                icon: const Icon(Icons.notifications),
                tooltip: 'Notification',
                onPressed: () {
                  
                },
              ),
              IconButton(
                  icon: const Icon(Icons.settings),
                  tooltip: 'Settings',
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Setting()),);
                  }),
            ],
                           
              ),
              
                    
                ),
          );
  }
}