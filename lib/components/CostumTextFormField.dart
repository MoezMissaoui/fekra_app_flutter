import 'package:fekra_app/helpers/template.dart';
import 'package:flutter/material.dart';

class CostumTextFormField extends StatelessWidget {
  const CostumTextFormField({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 5, 10, 5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: shadowTextFormField,
                blurRadius: 1,
                offset: const Offset(0, 1))
          ]),
      child: child,
    );
  }
}
