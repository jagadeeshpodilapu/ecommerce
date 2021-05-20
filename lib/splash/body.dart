import 'package:ebuy/config.dart';
import 'package:ebuy/splash/splash_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

final primary = Color(0xFF895F44);
final secondary = Color(0xFF9D9EA3);

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  List<Map<String, String>> splashData = [
    {
      "subHead": "You can see the product with all angles, true and convenient",
      "head": "View product 360 degrees",
      "image": "assets/images/splash_1.svg"
    },
    {
      "subHead":
          "You just need to take a photo or upload and we will \n find similar products for you.",
      "head": "Find products easily",
      "image": "assets/images/splash_2.svg"
    },
    {
      "head": "Payment is easy",
      "subHead":
          "You just need to take a photo or upload and we will\n find similar products for you.",
      "image": "assets/images/splash_3.svg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: PageView.builder(
                    onPageChanged: (currentValue) {
                      setState(() {
                        currentIndex = currentValue;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                          header: splashData[index]['head'],
                          subHead: splashData[index]['subHead'],
                          image: splashData[index]['image'],
                        )),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(50),
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(primary: primary),
                        child: Text("Get Started"),
                      ),
                    ),
                    Spacer(),

                  ],
                ),
              ),
            ),
            SvgPicture.asset("assets/images/display_down.svg"),
            Spacer(),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index ? primary : secondary,
      ),
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: 5,
    );
  }
}
