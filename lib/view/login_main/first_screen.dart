import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:project/shared/components.dart';
import 'package:project/view/login_main/intro_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      navigateTo(context, FirstScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/First Screen – 1.png",
              ),
              fit: BoxFit.cover)),
    );
  }
}
