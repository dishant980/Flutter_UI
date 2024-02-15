import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foxtradeappnew/profile.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, 
      height: double.infinity, 
      child: AnimatedSplashScreen(
        splash: Lottie.asset('splash_screen.json'),
        duration: 1000,
        nextScreen:  
        const Profile(), 
        splashIconSize: double.infinity, 
        backgroundColor: Colors.white, 
      ),
    );
  }
}
