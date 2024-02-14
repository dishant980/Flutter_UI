import 'package:flutter/material.dart';
import 'package:foxtradeappnew/login_page.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading:  BackButton( onPressed: (){
            Navigator.pop(context);
          }, color: Colors.blueGrey),
          title: const Text('Setting'),
          
        ),
        body:  Container(
          child:ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
          }, child: const Text('Logout')
          ), 
        
        ),
      ),
    );
  }
  
}

