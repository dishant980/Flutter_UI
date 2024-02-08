import 'package:flutter/material.dart';
import 'package:foxtradeappnew/components/sign_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white30,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 2, right: 2),
            width: width,
            height: height * 0.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/new_ban1.png'),
                    fit: BoxFit.fitWidth)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            width: width,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Foxtrade',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Enter your Email / Refer code & Password to login',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      labelText: 'Username',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      labelText: 'Password',
                      
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password ?'),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Sign_button(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '  Not a member? ',
                        ),
                      Text(
                        'Register Now',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w800),
                            
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
