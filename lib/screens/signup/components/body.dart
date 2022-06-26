import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invitation_app/components/rounded_input_field.dart';
import 'package:invitation_app/components/rounded_password_field.dart';
import 'package:invitation_app/components/rounded_phone_input_field.dart';
import 'package:invitation_app/constants.dart';

import '../../../components/rounded_after_signup_button.dart';
import '../../components/background.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 15),),
          SizedBox(height: 8.0,),
          SvgPicture.asset("assets/icons/verification.svg", height: size.height * 0.35,),
          RoundedInputField(hintText: "Your Name", onChanged: (value){}),
          RoundedPhoneInputField(hintText: "Phone Number", onChanged: (value){},),
          RoundedAfterSignUpButton(text: 'Sign Up',),
        ],
      ),
    ),);
  }
}

