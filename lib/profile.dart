import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purple,
          body: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 105),
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(85))),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('chandu.jpg'),
                        ),
                        SizedBox(height: 8),
                        Text('Chanderpal'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Refer Code:'),
                            SizedBox(width: 5),
                            Text('12345678'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    decoration: const BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(85))),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: 35,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ), //appbar
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
