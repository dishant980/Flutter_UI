import 'package:flutter/material.dart';
import 'package:foxtradeappnew/profile.dart';
import 'package:foxtradeappnew/setting.dart';

class Home extends StatefulWidget {
  
  
    const Home({super.key});
  
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
                title: const Text('Home'),
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
            
               body:  Column(
                children:[
                    Text('Welcome to Foxtrade'),
                                                               
                ],
                ),
  
       ),
    );
    
   
  }
}
