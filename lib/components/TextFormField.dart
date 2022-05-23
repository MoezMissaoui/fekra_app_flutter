import 'package:flutter/material.dart';

class CostumTextFormField extends StatelessWidget {
  const CostumTextFormField({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.blue.shade100,
                blurRadius: 1,
                offset: const Offset(0, 1))
          ]),
      child: child,
    );
  }
}
