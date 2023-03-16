import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:application/signin.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedSplashScreen(
      splash: Image.asset('assets/images/logo.png'),
      nextScreen: const Signin(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Color.fromARGB(255, 242, 108, 18),
      duration: 2000,
      splashIconSize: 400,
    ),
  ));
}
