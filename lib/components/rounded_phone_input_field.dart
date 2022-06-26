import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invitation_app/components/text_field_container.dart';
import 'package:invitation_app/constants.dart';

class RoundedPhoneInputField extends StatelessWidget {
final String hintText;
final IconData icon;
final ValueChanged<String> onChanged;

const RoundedPhoneInputField({
Key? key,
required this.hintText,
this.icon = Icons.person,
required this.onChanged,
}) : super(key: key);

@override
Widget build(BuildContext context) {
  return TextFieldContainer(
    child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(Icons.phone, color: kPrimaryColor,),
        hintText: hintText,
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(9)
      ],
    ),
  );
}
}

