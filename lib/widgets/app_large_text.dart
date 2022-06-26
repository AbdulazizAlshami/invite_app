import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget{
  double size;
  final String text;
  final Color color;

  AppLargeText({
    Key? key,
    this.size = 22,
    required this.text,
    this.color = Colors.black54,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
