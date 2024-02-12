import 'package:flutter/material.dart';

class Signbutton extends StatelessWidget {
  const Signbutton(  {super.key, });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
    
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


