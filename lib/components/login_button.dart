import 'package:flutter/material.dart';

class Loginbutton extends StatelessWidget {
  const Loginbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration:  BoxDecoration(color: Colors.black,
      borderRadius: BorderRadius.circular(10),
      ),
          child: const Center(
        child: Text(
          'Sign In',
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.w600
          ),
          
        ),
      ),
    );
  }
}
