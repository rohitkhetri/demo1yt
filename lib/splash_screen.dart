import 'dart:async';
//import 'package:demo1yt/Registration_Screen.dart';
//import 'package:demo1yt/dashboard_screen.dart';
import 'package:demo1yt/Login_Register/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override 
  void initState(){
    super.initState();

    Timer(const Duration(seconds: 4), (){
      //print('Page is opeining');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/snt_logo.png'),
            const SizedBox(height: 20),
            const Text(
              'Version 1.0.0',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}