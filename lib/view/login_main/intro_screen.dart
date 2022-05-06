import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';
import 'login_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/First Screen – 1.png",
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: defaultButton(
                  text: "Login",
                  onPressed: () {
                    navigateTo(context, LoginScreen());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
