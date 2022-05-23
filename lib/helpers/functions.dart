import 'package:flutter/material.dart';

Route createRouteFadeAnimation(link) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 1500),
    pageBuilder: (context, animation, secondaryAnimation) => link,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
