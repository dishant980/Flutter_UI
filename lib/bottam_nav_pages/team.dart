import 'package:flutter/material.dart';


class Teams extends StatefulWidget {
  const Teams({super.key});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        }),
      ),
      
      )

    );
  }
}