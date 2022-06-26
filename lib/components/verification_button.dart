import 'package:flutter/material.dart';
import 'package:invitation_app/screens/signup/signup_screen.dart';


import '../constants.dart';
import '../screens/login/login_screen.dart';
import '../screens/signup/password_entry.dart';
import '../screens/signup/verfication_screen.dart';

class RoundedVerSignUpButton extends StatelessWidget {
  final String text;
  final Color color, textColor;

  const RoundedVerSignUpButton({
    Key? key,
    required this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        width: size.width * 0.6,
        child: ClipRRect(
          //borderRadius: BorderRadius.circular(25),
            child: TextButton(
              onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder: (context) {return PasswordEntry();},),);},
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ),
            )));
  }
}
