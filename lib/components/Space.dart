import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  double? spaceHeight;
  double? spaceWidth;

  Space({this.spaceHeight, this.spaceWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: spaceHeight,
      width: spaceWidth,
    );
  }
}
