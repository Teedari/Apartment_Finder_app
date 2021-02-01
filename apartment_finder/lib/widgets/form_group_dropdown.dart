import 'package:apartment_finder/util.dart' as util;
import 'package:flutter/material.dart';

class FormGroupDropDown extends StatelessWidget {
  const FormGroupDropDown({
    Key key,
    @required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            color: util.secondaryColor,
            //color: Color(0xFFFEEEEEE),
            borderRadius: BorderRadius.circular(30),
          ),
          child: DropdownButtonFormField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(18),
            ),
            hint: Text(
              'Select Your Country',
              style: TextStyle(color: Colors.white),
            ),
            onChanged: (String val) {},
            items: [
              ...['Ghana', 'Nigeria', 'Morocco', 'Germany'].map((text) =>
                  DropdownMenuItem(
                      child: Text(text), value: text.toLowerCase()))
            ],
          ),
        ),
      ],
    );
  }
}
