import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/onboardingscreen.dart';
import 'package:whatsapp_clone/Widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/whatsapp.png"),
          SizedBox(height: 15),
          Uihelper.CustomText(
            text: "Whatsapp",
            height: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
