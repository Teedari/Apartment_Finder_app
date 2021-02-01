import 'package:apartment_finder/widgets/form_group.dart';
import 'package:apartment_finder/widgets/primary_button.dart';
import 'package:apartment_finder/widgets/text_label.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextLabelAuth('Login'),
                  SizedBox(
                    height: 15,
                  ),
                  Form(
                    child: Column(
                      children: [
                        FormGroup(label: 'YOUR EMAIL'),
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
                                    color: Theme.of(context).primaryColor,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(),
                  SizedBox(
                    height: 15,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
