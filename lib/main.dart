
import 'package:flutter/material.dart';
import 'package:foxtradeappnew/bottam_nav_pages/bottamnavbar.dart';
import 'package:foxtradeappnew/bottam_nav_pages/home.dart';
import 'package:foxtradeappnew/profile.dart';
import 'package:foxtradeappnew/setting.dart';
import 'package:foxtradeappnew/splash.dart';


void main() {
  runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash(),
      routes: {
        '/home':(context) => const Home(),
      },
      
      
    ),
  );
}

// ignore: must_be_immutable
class Foxtrade extends StatefulWidget {
  const Foxtrade({super.key});

  @override
  State <Foxtrade> createState() =>  _FoxtradeState();
  
}

class  _FoxtradeState extends State <Foxtrade> {
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
        debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          
          title: const Text("Foxtrade"),
          leading: IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
          ),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          actions: [
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
        bottomNavigationBar: const BottamBar(),         
        

      
      ),
      
    );
  }
}