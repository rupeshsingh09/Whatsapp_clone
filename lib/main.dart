import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/homescreen.dart';
import 'package:whatsapp_clone/Screens/Splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: false,
        fontFamily: "Regular",
      ),
      home: SplashScreen(),
    );
  }
}
