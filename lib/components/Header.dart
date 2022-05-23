import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header(
      {Key? key,
      required this.principalTitle,
      required this.secondTitle,
      required this.logo})
      : super(key: key);

  final String principalTitle;
  final String secondTitle;
  final String logo;

  @override
  State<Header> createState() => _Header();
}

class _Header extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.principalTitle,
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.secondTitle,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            Hero(
              tag: "PrincipalLogo",
              child: Image(
                width: 50,
                image: AssetImage(widget.logo),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
