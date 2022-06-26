import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/login/login_screen.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        width: size.width * 0.8,
        child: ClipRRect(
            //borderRadius: BorderRadius.circular(25),
            child: TextButton(
              onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder: (context) {return const LoginScreen();},),);},
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ),
            )));
  }
}
