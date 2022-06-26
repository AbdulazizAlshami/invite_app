import 'package:flutter/material.dart';
import 'package:invitation_app/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged <String > onChanged;
  final String hintText;
  const RoundedPasswordField({
    Key? key, required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      obscureText: true,
      onChanged: onChanged,
      decoration: InputDecoration(
          icon: Icon(Icons.lock, color: kPrimaryColor,),
          suffixIcon: Icon(Icons.visibility, color: kPrimaryColor,),
          border: InputBorder.none,
        hintText: hintText,
      ),
    ));
  }
}
