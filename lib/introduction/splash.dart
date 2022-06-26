import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invitation_app/constants.dart';
import 'package:invitation_app/introduction/introduction.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({required Color loaderColor,
    required int seconds,
    required double photoSize,
    dynamic navigateAfterSeconds,
    required Text title,
    required Color backgroundColor,
    required SvgPicture image,});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container();
    SplashScreen(
      seconds: 8,
      loaderColor: kPrimaryLightColor,
      backgroundColor: kPrimaryBackgroundColor,
      navigateAfterSeconds: new IntroductionPage(),
      title: Text('GeeksForGeeks',textScaleFactor: 2,),
      image: SvgPicture.asset("assets/icons/splash.svg", height:  size.height * 0.45,),
      photoSize: 100.0,
    );
  }
}
