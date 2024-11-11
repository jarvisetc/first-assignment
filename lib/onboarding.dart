import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> { 
@override
  Widget build (BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Image(
          image: AssetImage("assets/images/crypto2.jpeg"),
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          Image(
            image: AssetImage("assets/images/CRYPTO.jpeg"),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
  }