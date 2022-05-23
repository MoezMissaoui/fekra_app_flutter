import 'dart:ui';

import 'package:fekra_app/HomeScreen.dart';
import 'package:fekra_app/LoginScreen.dart';
import 'package:fekra_app/components/Button.dart';
import 'package:fekra_app/components/Header.dart';
import 'package:fekra_app/components/TextFormField.dart';
import 'package:fekra_app/helpers/functions.dart';

import 'package:fekra_app/helpers/template.dart';
import 'package:flutter/material.dart';
import 'package:fekra_app/animations/fadeanimation.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // container decorations
          width: MediaQuery.of(context).size.width,
          decoration: principalBackgroud,
          // child of container
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 40),

              // Header with Animation
              const FadeAnimation(
                delay: 1.0,
                child: Header(
                  principalTitle: 'Rgister',
                  secondTitle: 'Have fun with us',
                  logo: 'images/solution.png',
                ),
              ),

              // Space of 20
              const SizedBox(height: 20),

              // Body
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      // space 60
                      const SizedBox(height: 60),
                      // Form with Animation
                      FadeAnimation(
                        delay: 1.0,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue.shade50,
                                    blurRadius: 20,
                                    offset: const Offset(0, 10))
                              ]),
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                // Name with Animation
                                FadeAnimation(
                                  delay: 1.0,
                                  child: CostumTextFormField(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          hintText: "Name",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),

                                // Email with Animation
                                FadeAnimation(
                                  delay: 1.0,
                                  child: CostumTextFormField(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          hintText: "Email",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),

                                // Phone number with Animation
                                FadeAnimation(
                                  delay: 1.0,
                                  child: CostumTextFormField(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          hintText: "Phone number",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),

                                // Password with Animation
                                FadeAnimation(
                                  delay: 1.0,
                                  child: CostumTextFormField(
                                    child: TextFormField(
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: const InputDecoration(
                                          hintText: "Password",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),

                                // Confirm Password with Animation
                                FadeAnimation(
                                  delay: 1.0,
                                  child: CostumTextFormField(
                                    child: TextFormField(
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: const InputDecoration(
                                          hintText: "Confirm Password",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // space 40
                      const SizedBox(height: 40),

                      // Already have account ? with Animation
                      FadeAnimation(
                        delay: 1.0,
                        child: Row(
                          children: [
                            const Text(
                              "Already have account ?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).push(
                                createRoute(const LoginScreen()),
                              ),
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Button Register with Animation
                      const FadeAnimation(
                        delay: 1.0,
                        child: Button(
                          title: 'Register',
                          height: 60,
                          width: 400,
                          link: HomeScreen(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
