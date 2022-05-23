import 'package:fekra_app/animations/fadeanimation.dart';
import 'package:flutter/material.dart';

// Splash Screen
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: const FadeAnimation(
        delay: 1.0,
        child: Center(
          child: Image(
            width: 200,
            image: AssetImage('images/solution.png'),
          ),
        ),
      ),
    );
  }
}
