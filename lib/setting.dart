import 'package:flutter/material.dart';

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
      ),
    );
  }
  
}

