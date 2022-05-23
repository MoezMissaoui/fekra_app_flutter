import 'package:flutter/material.dart';

Route createRoute(link) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 1000),
    pageBuilder: (context, animation, secondaryAnimation) => link,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
