import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invitation_app/constants.dart';
import 'package:invitation_app/introduction/introduction.dart';
import 'package:invitation_app/introduction/splash.dart';
import 'package:invitation_app/screens/login/login_screen.dart';
import 'package:invitation_app/screens/signup/signup_screen.dart';
import 'package:invitation_app/screens/signup/verfication_screen.dart';
import 'package:invitation_app/screens/welcome_pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Invitation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Noto_Kufi_Arabic",
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryBackgroundColor,
      ),
      home: Directionality( // add this
        textDirection: TextDirection.rtl, // set this property
        child: IntroductionPage(),
  //SplashScreen(photoSize: 100, image: SvgPicture.asset("assets/icons/splash.svg"),
    //        loaderColor: kPrimaryLightColor, seconds: 8,navigateAfterSeconds: IntrocutionPage(),
      //      backgroundColor: kPrimaryBackgroundColor, title: Text("Invitation App",)  ),
      ),
    );
  }
}
