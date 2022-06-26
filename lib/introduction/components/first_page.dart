import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invitation_app/constants.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(children: [
              SvgPicture.asset(
                "assets/icons/page_1.svg",
                height: size.height * 0.45,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: deviceHeight(context) * 0.01,
                ),
                child: Column(
                  textDirection: TextDirection.rtl,
                  children: const [
                    Text(
                      "نظام دعوة",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontWeight: FontWeight.bold
                      , color: kPrimaryColor,
                      fontSize: 20),
                    ),
                    Text(
                      "نظام سحابي يقوم على تسجيل المدعويين وإرسال دعوة خاصة لكل مدغُ عن طريق تطبيق الواتساب",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                          fontSize: 20),
                    ),
                  ],
                ),
              )
            ]),
          )),
    );
  }
}
