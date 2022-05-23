import 'dart:async';
import 'package:fekra_app/LoginScreen.dart';
import 'package:fekra_app/LoginScreen.dart';
import 'package:fekra_app/animations/fadeanimation.dart';
import 'package:fekra_app/HomeScreen.dart';
import 'package:fekra_app/helpers/template.dart';
import 'package:flutter/material.dart';
import 'package:fekra_app/helpers/functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.connected}) : super(key: key);

  final bool connected;

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.of(context).pushReplacement(
        createRouteFadeAnimation(
            (widget.connected) ? const HomeScreen() : const LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimation(
        delay: 1.0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: principalBackgroud,
          child: Center(
            child: Hero(
              tag: "PrincipalLogo",
              child: Image(
                width: 200,
                image: AssetImage(logoUrl),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
