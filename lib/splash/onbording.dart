import 'package:ebuy/config.dart';
import 'package:ebuy/splash/body.dart';
import 'package:flutter/material.dart';


class OnbordScreen extends StatefulWidget {
  OnbordScreen({Key key}) : super(key: key);

  @override
  _OnbordScreenState createState() => _OnbordScreenState();
}

class _OnbordScreenState extends State<OnbordScreen> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }

}


