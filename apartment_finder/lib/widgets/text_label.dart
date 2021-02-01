import 'package:flutter/material.dart';

class TextLabelAuth extends StatelessWidget {
  final String label;
  const TextLabelAuth(this.label);
  @override
  Widget build(BuildContext context) {
    return Text(
      'Login',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
