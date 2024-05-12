import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pumpkin Story'));
  }
}

class SubHeader extends StatelessWidget {
  const SubHeader({required this.text});
  final String text;

  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ));
  }
}
