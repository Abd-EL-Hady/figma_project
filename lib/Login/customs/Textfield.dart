import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield(
      {super.key,
      required this.text,
      this.color,
      required this.size,
       this.icon});
  final String text;
  final Color? color;
  final double size;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(color: color, fontSize: size),
        suffixIcon: Icon(icon),
      ),
    );
  }
}
