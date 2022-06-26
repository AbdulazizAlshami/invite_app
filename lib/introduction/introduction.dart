import 'package:flutter/material.dart';
import 'package:invitation_app/constants.dart';
import 'package:invitation_app/introduction/components/first_page.dart';
import 'package:invitation_app/introduction/components/second_page.dart';
import 'package:invitation_app/screens/welcome_pages/welcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'components/third_page.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: 600,
                child: PageView(controller: _pageController, children: const [
                  FirstPage(),
                  SecondPage(),
                  ThirdPage(),
                ])),

            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: kPrimaryColor,
                dotColor: kPrimaryLightColor,
                dotHeight: 12,
                dotWidth: 12,
                spacing: 10,
              ),
            ),
             Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: kPrimaryColor,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
                    width: size.width * 0.5,
                    child: ClipRRect(
                      //borderRadius: BorderRadius.circular(25),
                        child: TextButton(
                          onPressed: () {Navigator.push(context,
                            MaterialPageRoute(builder: (context) {return const WelcomeScreen();},),);},
                          child: const Text(
                            "تخطي",
                            style: TextStyle(color: kPrimaryBackgroundColor, fontWeight: FontWeight.bold, fontSize: 15),
                          ),
    )))
          ],
        ));
  }
}
