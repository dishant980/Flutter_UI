import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff71797E),
          body: ListView(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 290),
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 50, left: 20, right: 20),
                            height: 150,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Color(0xff900C3F),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(80),
                                  topLeft: Radius.circular(20),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 150),

                    height: 300,
                    decoration: const BoxDecoration(
                        color: Color(0xffE5E4E2),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(85))),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('chandu.jpg'),
                        ),
                        SizedBox(height: 8),
                        Text('Chanderpal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Refer Code',style: TextStyle(fontWeight: FontWeight.w400),),
                            SizedBox(width: 10),
                            Text('Referred By',style: TextStyle(fontWeight: FontWeight.w400),),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                            
                            Text(
                              '12345678',
                              style: TextStyle(fontWeight: FontWeight.bold,),
                            ),
                            SizedBox(width: 15),
                            Text(
                              '58795642',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            
                          ],
                        ),
                      ],
                    ), //
                  ), //

                  Container(
                    height: 150,
                    decoration: const BoxDecoration(
                        color: Color(0xffD3D3D3),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(85))),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                      child: Row(
                        children: [
                          Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: 32.5,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                  ),
//appbar
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
