import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invitation_app/components/rounded_password_field.dart';

class PasswordEntry extends StatelessWidget {
  const PasswordEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: deviceHeight(context) * 0.15,),
          child: Column(
            children: [
              SvgPicture.asset("assets/icons/verification.svg", height: size.height * 0.3,),
              RoundedPasswordField(onChanged: (String value) {  }, hintText: 'Password',),
            RoundedPasswordField(onChanged: (String value) {  }, hintText: "Verify Password",),
    ]),
        ),
      ));
  }
}


