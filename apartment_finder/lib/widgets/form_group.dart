import 'package:flutter/material.dart';

class FormGroup extends StatelessWidget {
  final String label;
  final bool obscureText;
  const FormGroup({@required this.label, this.obscureText = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label ?? 'no label',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFFEEEEEE),
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: obscureText
                  ? '********************************************'
                  : 'john.doe@gmail.com',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(18),
            ),
          ),
        )
      ],
    );
  }
}
