import 'package:flutter/material.dart';
import 'package:foxtradeappnew/bottam_nav_pages/finance.dart';
import 'package:foxtradeappnew/bottam_nav_pages/menu.dart';
import 'package:foxtradeappnew/bottam_nav_pages/shop.dart';
import 'package:foxtradeappnew/bottam_nav_pages/team.dart';
import 'package:foxtradeappnew/profile.dart';
import 'package:foxtradeappnew/setting.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> bottomBarPages = [
    const Shop(),
    const Finance(),
    const Home(),
    const Menu(),
    const Teams(),
  ];

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
        bottomNavigationBar: const GNav(
          rippleColor: Color(0xffEBEDEF),
          hoverColor: Color(0xffEAECEE), 
          haptic: true, 
          tabBorderRadius: 15,
          backgroundColor: Color(0xff587968),
          curve: Curves.easeOutExpo, 
          duration: Duration(milliseconds: 300),
          gap: 8, 
          color: Color(0xffEBEDEF), 
          activeColor: Color.fromARGB(179, 53, 111, 158), 
          iconSize: 24, 
          
          tabs: [
            GButton(
              icon: Icons.shop_2,
              text: 'Shop',
            ),
            GButton(icon: Icons.terminal_sharp, text: 'Teams'),
            GButton(
              icon: Icons.find_replace_rounded,
              text: 'Finance',
            ),
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.menu, text: 'Menu'),
          ],
        ),
      ),
    );
  }
}
