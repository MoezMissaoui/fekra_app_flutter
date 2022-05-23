import 'package:fekra_app/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const bool _connected = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // change status bar color
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
    return GestureDetector(
      // on tape hide keyboard
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        title: 'FEKRA',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(
          connected: _connected,
        ),
      ),
    );
  }
}
