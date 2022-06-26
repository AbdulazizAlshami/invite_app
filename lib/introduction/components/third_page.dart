import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(
                children:[ SvgPicture.asset("assets/icons/page_3.svg",
                  height: size.height * 0.45,
                ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: deviceHeight(context) * 0.1,),
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
                          "تستطيع إعادة دعوة المدعويين سابقاً لأن بياناتك تخزن في السحابة",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )]
            ),
          )
      ),
    );
  }
}