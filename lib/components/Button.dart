import 'package:fekra_app/helpers/functions.dart';
import 'package:fekra_app/helpers/template.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({
    Key? key,
    required this.title,
    required this.width,
    required this.height,
    required this.link,
  }) : super(key: key);

  final String title;
  final double width;
  final double height;
  final dynamic link;

  @override
  State<Button> createState() => _Button();
}

class _Button extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(principalBackgroundColorButton),
        shadowColor: MaterialStateProperty.all(principalShadowColorButton),
        elevation: MaterialStateProperty.all(15),
        fixedSize: MaterialStateProperty.all(Size(widget.width, widget.height)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      onPressed: () => {Navigator.of(context).push(createRoute(widget.link))},
      child: Text(
        widget.title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
