import 'package:apartment_finder/util.dart' as util;
import 'package:flutter/material.dart';

class FormGroup extends StatelessWidget {
  final String label;
  final bool obscureText;
  final String placeholder;
  const FormGroup(
      {@required this.label, this.obscureText = false, this.placeholder});
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
            // color: Color(0xFFFEEEEEE),
            color: util.secondaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            style: TextStyle(color: Colors.white),
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: obscureText
                  ? '********************************************'
                  : placeholder,
              hintStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(18),
            ),
          ),
        )
      ],
    );
  }
}
