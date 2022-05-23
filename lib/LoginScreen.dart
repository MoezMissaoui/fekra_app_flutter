import 'package:fekra_app/HomeScreen.dart';
import 'package:fekra_app/RegisterScreen.dart';
import 'package:fekra_app/components/Header.dart';
import 'package:fekra_app/components/Space.dart';
import 'package:fekra_app/components/CostumTextFormField.dart';
import 'package:fekra_app/helpers/template.dart';
import 'package:flutter/material.dart';
import 'package:fekra_app/animations/fadeanimation.dart';

import 'components/Button.dart';
import 'helpers/functions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: principalBackgroud,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // Space of height 40
              Space(spaceHeight: 40),

              // Header with Animation
              Header(
                principalTitle: "Login",
                secondTitle: "Welcome Back",
                logo: logoUrl,
              ),

              // Space of height 20
              Space(spaceHeight: 20),

              // Body page
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Space of height 60
                      Space(spaceHeight: 60),

                      // Login Form with Animation
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
                                // Email or phone number
                                FadeAnimation(
                                  delay: 1.0,
                                  child: CostumTextFormField(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          hintText: "Email or phone number",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),

                                // Password
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Space of height 40
                      Space(spaceHeight: 40),

                      // Forget psw ?
                      FadeAnimation(
                        delay: 1.0,
                        child: TextButton(
                          onPressed: () {
                            final snackBar = SnackBar(
                              behavior: SnackBarBehavior.floating,
                              content:
                                  const Text('Hey! This function will be soon'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                              duration: const Duration(milliseconds: 4000),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: const Text(
                            "Forget Password ?",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),

                      // Space of height 50
                      Space(spaceHeight: 50),

                      // Don't have account ?
                      FadeAnimation(
                        delay: 1.0,
                        child: Row(
                          children: [
                            const Text(
                              "Don't have account ?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).push(
                                createRouteFadeAnimation(
                                    const RegisterScreen()),
                              ),
                              child: const Text(
                                "Register",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Button login
                      const FadeAnimation(
                        delay: 1.0,
                        child: Button(
                          title: 'Login',
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
