import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invitation_app/constants.dart';
import 'package:invitation_app/screens/login/login_screen.dart';

import '../../components/rounded_button.dart';
import '../../components/rounded_signup_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to our Invitation App",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset(
              "assets/icons/verification.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05,),
            RoundedButton(
              text: "LOGIN",
            ),
            RoundedSignUpButton(
              text: "SIGNUP",
              color: kPrimaryLightColor,
              textColor: kPrimaryBackgroundColor,
            )
          ],
        ),
      ),
    );
  }
}

