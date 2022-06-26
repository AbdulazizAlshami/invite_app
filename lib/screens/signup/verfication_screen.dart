import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invitation_app/constants.dart';
import 'package:invitation_app/screens/signup/signup_screen.dart';
import '../../components/verification_button.dart';

class OTPForm extends StatelessWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          margin: EdgeInsets.only(top: deviceHeight(context) * 0.2,),
          child: Form(
            child: Column(
              children: [
                SvgPicture.asset("assets/icons/verification.svg", height: size.height * 0.2,),
                const Text("الرجاء إدخال رمز التحقق المرسل للرقم ",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,
                    color: kPrimaryColor,fontSize: 23,),),
                 const Text("775553281", textAlign: TextAlign.center, style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,
                  fontSize: 22,),),
                TextButton(onPressed: () {Navigator.push(context,
          MaterialPageRoute(builder: (context) {return const SignUpScreen();},),);}
            , child: const Text("تعديل", style: TextStyle(color: kPrimaryColor, fontSize: 15, fontWeight: FontWeight.bold),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          FocusScope.of(context).nextFocus();
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusColor: kPrimaryColor,
                          fillColor: kPrimaryBackgroundColor,
                        ),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          FocusScope.of(context).nextFocus();
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusColor: kPrimaryColor,
                        ),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          FocusScope.of(context).nextFocus();
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusColor: kPrimaryColor,
                        ),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          FocusScope.of(context).nextFocus();
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusColor: kPrimaryColor,
                        ),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0,),
                const RoundedVerSignUpButton(text: 'Verify',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
