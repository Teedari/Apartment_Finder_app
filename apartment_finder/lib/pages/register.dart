import 'package:apartment_finder/widgets/form_group.dart';
import 'package:apartment_finder/widgets/form_group_dropdown.dart';
import 'package:apartment_finder/widgets/primary_button.dart';
import 'package:apartment_finder/widgets/text_label.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextLabelAuth('Register'),
                          SizedBox(
                            height: 15,
                          ),
                          Form(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: FormGroup(
                                      label: 'FIRST NAME',
                                      placeholder: 'Eg. Godfred, John',
                                    )),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: FormGroup(
                                        label: 'LAST NAME',
                                        placeholder: 'Eg. Dari, Mensah',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                FormGroupDropDown(
                                  label: 'COUNTRY',
                                ),
                                SizedBox(height: 15),
                                FormGroup(
                                    label: 'EMAIL',
                                    placeholder: 'john.doe@##.com'),
                                SizedBox(height: 15),
                                FormGroup(
                                    label: 'MOBILE', placeholder: '0234567899'),
                                SizedBox(height: 15),
                                FormGroup(
                                  label: 'PASSWORD',
                                  obscureText: true,
                                ),
                                SizedBox(height: 20),
                                PrimaryButton(),
                                SizedBox(height: 20),
                                RichText(
                                  text: TextSpan(
                                      text: 'Can\'t access your account? ',
                                      style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'forgot password!',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ]),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyle(
                                color: Color(0xFF333333),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Register',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
