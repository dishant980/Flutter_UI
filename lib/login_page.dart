
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:foxtradeappnew/bottam_nav_pages/home.dart';



class Login extends StatelessWidget {
  const Login({super.key});
    
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        child: Column(
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
              child: const  Column(
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
                 SizedBox(height: 20),
                LoginForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Username';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            
            style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50),textStyle: const TextStyle(fontSize: 20)),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                String username = _usernameController.text;
                String password = _passwordController.text;
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()),);
                
               
              }
              else
              {
                 ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter valid username and password.'),
                        duration: Duration(seconds: 2),
                      ),
                    );
              }
              
            },
            child:const Text('Login'),
          ),
         const SizedBox(height: 20,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a Member?'),
                TextButton(onPressed: (){
            
                }, child: const Text('Sign Up Here',selectionColor: Colors.cyanAccent,)
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  
}