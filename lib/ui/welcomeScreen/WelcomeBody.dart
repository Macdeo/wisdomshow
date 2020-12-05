import 'package:flutter/material.dart';
import 'package:wisdomshow/colors/constants.dart';
import 'package:wisdomshow/ui/buypin.dart';
import 'package:wisdomshow/ui/components/or_divider.dart';
import 'package:wisdomshow/ui/components/roundedButton.dart';
import 'package:wisdomshow/ui/signup.dart';
//import 'package:wisdomshow/ui/login/login.dart';

import '../login.dart';
import 'welcomeBackground.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // This is to make the screen size fit to all device
    // ignore: missing_required_param
    return WelcomeBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.22),
            Center(
                child: Container(
              child: Text(
                'WELCOME TO',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: kBackgroundColor),
              ),
            )),
            SizedBox(height: size.height * 0.06),
            Image.asset(
              'images/wisdomshowmain.png',
              height: size.height * 0.20,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "BUY PIN",
              color: Color(0xff0648B3),
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BuyPin();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "LOGIN",
              color: kSecondColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            RoundedButton(
              text: "SIGN UP",
              color: Colors.red[500],
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75.0),
              child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Demo');
                  },
                  child: ListTile(
                    leading: Text(
                      'PLAY DEMO',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0648B3),
                      ),
                    ),
                    trailing: Icon(
                      Icons.gamepad,
                      size: 28.0,
                      color: Color(0xff0648B3),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
