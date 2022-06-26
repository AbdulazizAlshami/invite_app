import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invitation_app/components/rounded_button.dart';
import 'package:invitation_app/components/rounded_phone_input_field.dart';
import 'package:invitation_app/screens/signup/signup_screen.dart';

import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../constants.dart';
import '../../components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Log in", style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 15),),

            SizedBox(height: size.height* 0.03,),
            SvgPicture.asset(
              "assets/icons/verification.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height* 0.03,),
            RoundedPhoneInputField(
              hintText: "Phone Number",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {}, hintText: 'Password',
            ),
            RoundedButton(text: "LOGIN", ),
            SizedBox(height: size.height* 0.03,),
            AlreadyHaveAnAccountCheck(),
          ],
        ),
      ),
    );
  }
}

