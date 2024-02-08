import 'package:flutter/material.dart';
import 'package:foxtradeappnew/profile.dart';
import 'package:foxtradeappnew/setting.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
     
      return Scaffold(
            appBar: AppBar(
              title: const Text('Shop'),
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
            
        
    );
  }
}