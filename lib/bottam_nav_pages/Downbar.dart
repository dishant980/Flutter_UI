import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home.dart';
import 'team.dart';
import 'finance.dart';
import 'package:foxtradeappnew/bottam_nav_pages/shop.dart';
import 'menu.dart';

class DownBar extends StatefulWidget {
  const DownBar({super.key});

  @override
  State<DownBar> createState() => _DownBarState();
}

class _DownBarState extends State<DownBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Shop(),
    Teams(),
    Home(),
    Finance(),
    Menu(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: GNav(
          tabs: const [
            GButton(
              icon: Icons.shop_2,
              text: 'Shop',
            ),
            GButton(icon: Icons.terminal_sharp, text: 'Teams'),
            GButton(icon: Icons.home, text: 'Home'),
            GButton(
              icon: Icons.find_replace_rounded,
              text: 'Finance',
            ),
            GButton(icon: Icons.menu, text: 'Menu'),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
