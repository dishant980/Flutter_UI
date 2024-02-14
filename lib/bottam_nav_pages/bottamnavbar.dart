import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home.dart';
import 'team.dart';
import 'finance.dart';
import 'package:foxtradeappnew/bottam_nav_pages/shop.dart';
import 'menu.dart';


class BottamBar extends StatefulWidget {
  const BottamBar({super.key});

  @override
  State<BottamBar> createState() => _BottamBarState();
}

class _BottamBarState extends State<BottamBar> {
    int _selectedIndex = 0;

   static const List<Widget> _widgetOptions = <Widget>[
    Shop(),
    Teams(),
    Finance(),
    Home(),
    Menu(),
  ];
  @override
  Widget build(BuildContext context) {
    return  
       Scaffold(

        body: _widgetOptions[_selectedIndex],

        bottomNavigationBar:  GNav(tabs: const [
          GButton(icon: Icons.shop_2,
          text: 'Shop',),
          GButton(
            icon: 
          Icons.terminal_sharp,
          text: 'Teams'),
          GButton(
            icon: Icons.find_replace_rounded,
            text: 'Finance',),
          GButton(icon: Icons.home,
          text: 'Home'),
          GButton(icon: Icons.menu,
          text: 'Menu'
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        
        ),
      );
    
  }
}