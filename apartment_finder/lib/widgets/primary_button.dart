import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).primaryColor),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}
