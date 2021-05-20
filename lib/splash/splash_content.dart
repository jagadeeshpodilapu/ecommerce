import 'package:ebuy/config.dart';
import 'package:ebuy/splash/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashContent extends StatelessWidget {
  String header;
  String image;
  String subHead;

  SplashContent({this.header, this.image, this.subHead});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image),
        SizedBox(
          height: getProportionateScreenHeight(190),
        ),
        Text(
          header,
          textAlign: TextAlign.center,
          style: TextStyle(color: primary, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(subHead,
            textAlign: TextAlign.center,
            style: TextStyle(color: secondary, fontSize: 14)),
      ],
    );
  }
}
