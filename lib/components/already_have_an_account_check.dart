import 'package:flutter/material.dart';
import 'package:invitation_app/screens/signup/signup_screen.dart';
import '../constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login? "Don't have an account ?" : "Already have an account",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
            onTap: () {Navigator.push(context,
    MaterialPageRoute(builder: (context) {return const SignUpScreen();},),);},
            child: Text(
              login? "Sign Up": "Sign In",
              style: const TextStyle(
                  color: kPrimaryColor, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
