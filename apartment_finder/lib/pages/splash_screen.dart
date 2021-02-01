import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  // color: Colors.greenAccent,
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/splash_screen.jpg'),
              )),
            ),
            Opacity(
              opacity: .95,
              child: Container(
                width: double.infinity,
                color: Color(0xFF51D2D3),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButton(
                          label: 'Login',
                          onPress: () {},
                        ),
                        MyButton(
                          label: 'Register',
                          onPress: () {},
                          outlined: true,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text('Copyright @ Teedari'),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  MyButton(
      {@required this.label, @required this.onPress, this.outlined = false});
  final String label;
  final Function onPress;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 250,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          label ?? 'no label',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
