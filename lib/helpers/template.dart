import 'package:flutter/material.dart';

// statusBarColor Color
const principalColor = Colors.deepPurple;

// statusBarColor Color
const statusBarColor = principalColor;
// primarySwatch Color
const primarySwatch = principalColor;
// Principal Background decoration
BoxDecoration principalBackgroud = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    colors: [
      principalColor.shade500,
      principalColor.shade200,
    ],
  ),
);
// Principal button decoration
Color principalBackgroundColorButton = principalColor.shade500;
Color principalShadowColorButton = principalColor.shade50;
// Principal shadow colors
Color shadowTextFormField = principalColor.shade100;
Color shadowBoxForm = principalColor.shade50;

String logoUrl = "images/solution.png";
