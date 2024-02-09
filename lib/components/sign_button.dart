import 'package:flutter/material.dart';


class Signbutton extends StatelessWidget {

  final Function action;

  
  const Signbutton({super.key,required this.action, required onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handleButtonclick(action),
      child: Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      ),
    );
  }
  
 
}

handleButtonclick(Function action) {

  
}


