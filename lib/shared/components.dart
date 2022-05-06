import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/constants.dart';
import 'package:project/view/Menu/MenuHome.dart';
import 'package:project/view/notifications/all_notification_screen.dart';
import 'package:sizer/sizer.dart';

Widget defaultButton(
        {@required String text,
        Color color = kDefaultButtonColor,
        @required Function onPressed,
        double width = double.infinity,
        double height = 63,
        Color textColor = Colors.white}) =>
    GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 17, color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

Future<dynamic> navigateTo(BuildContext context, Widget page) =>
    Navigator.of(context).push(MaterialPageRoute(
        builder: (
      context,
    ) =>
            page));

Future<dynamic> navigateToAndFinish(BuildContext context, Widget page) =>
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ),
        (route) => false);

Widget customTextFormField(
        {@required TextEditingController controller,
        bool isPassword = false,
        @required String hintText,
        @required Widget suffix,
        Function onSubmit,
        Function suffixFunction,
        Function validate,
        @required TextInputType type}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xffC8C8C8), fontSize: 11),
        suffixIcon: InkWell(
          onTap: suffixFunction,
          child: suffix,
        ),
        fillColor: kTextFormFieldColor,
        filled: true,
      ),
    );

Widget customTextField({
  @required TextEditingController controller,
  TextInputType keyboardType,
  String label,
  @required String hintText,
  int maxLines = 1,
  IconData suffix,
  Function suffixFunction,
  bool showLabel = true,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          maxLines: maxLines,
          decoration: InputDecoration(
            floatingLabelBehavior: showLabel
                ? FloatingLabelBehavior.always
                : FloatingLabelBehavior.never,
            suffixIcon: InkWell(onTap: suffixFunction, child: Icon(suffix)),
            hintText: hintText,
            hintStyle:
                const TextStyle(color: kGreyColor, fontWeight: FontWeight.bold),
            labelText: label,
            labelStyle: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          )),
    );

Widget defaultText(
        {@required String text,
        double fontSize = 20,
        FontWeight fontWeight = FontWeight.normal,
        Color color = Colors.white}) =>
    Text(
      text,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool search;
  final bool haveBell;
  final bool haveNotf;
  final bool canPop;
  final TextEditingController controller;
  CustomAppBar(
      {@required this.title,
      this.search = false,
      this.haveBell = true,
      this.canPop = true,
      this.haveNotf = true,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Column(
        children: [
          AppBar(
            backgroundColor: kPrimaryColor,
            elevation: 0,
            centerTitle: true,
            leading: GestureDetector(
                onTap: () {
                  if (canPop) Navigator.pop(context);
                },
                child: Image.asset("assets/images/Group 1558.png")),
            title: Text(
              title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            actions: [
              if (haveBell)
                Center(
                  child: IconButton(
                    onPressed: () {
                      navigateTo(context, AllNotificationScreen());
                    },
                    icon: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Icon(
                          Icons.notifications_none,
                          size: 30,
                          color: Colors.white,
                        ),
                        if (haveNotf)
                          Container(
                            height: 10,
                            width: 10,
                            decoration: new BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              IconButton(
                icon: Image.asset(
                  "assets/images/Mask Group 31.png",
                ),
                onPressed: () {
                  navigateTo(context, MenuScreen());
                },
              ),
            ],
          ),
          if (search == true)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(
                          color: Color(0xffC8C8C8), fontSize: 11),
                    ),
                  )),
                  SizedBox(
                    width: 1.w,
                  ),
                  Container(
                      height: 6.5.h,
                      width: 13.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Group 1890.png")))),
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(search == true ? 120 : 70);
}

Widget customDropdownMenu(
        {String label,
        dynamic value,
        String hintText,
        List<DropdownMenuItem<dynamic>> itemList,
        Function onChanged}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InputDecorator(
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: value,
              hint: Text(
                hintText,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              isExpanded: true,
              items: itemList,
              isDense: true,
              onChanged: onChanged,
            ),
          )),
    );

PreferredSizeWidget myCustomAppBar(
    {bool canPop = false,
    @required BuildContext context,
    double toolbarHeight = 100.0,
    bool haveBell = true,
    bool search = false,
    TextEditingController controller,
    bool haveNotf = false,
    @required String title}) {
  return AppBar(
    elevation: 0,
    toolbarHeight: toolbarHeight,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(15),
              bottomEnd: Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Column(
          children: [
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                canPop
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset("assets/images/Group 1558.png"))
                    : SizedBox(),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Row(
                  children: [
                    if (haveBell)
                      Container(
                        height: 30,
                        width: 30,
                        child: Center(
                          child: Stack(
                            children: [
                              Icon(
                                Elusive.bell,
                                size: 30,
                                color: Colors.white,
                              ),
                              if (haveNotf)
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: new BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                        //color: Colors.indigo,
                      ),
                    InkWell(
                      onTap: () {
                        navigateTo(context, MenuScreen());
                      },
                      child: Image.asset(
                        "assets/images/Mask Group 31.png",
                        height: 50,
                        width: 50,
                      ),
                    )
                  ],
                )
              ],
            ),
            if (search == true)
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 6.5.h,
                      child: customTextFormField(
                          controller: controller,
                          hintText: "Search",
                          suffix: Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: Container(
                              height: 2.h,
                              width: 2.w,
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          validate: () {},
                          type: TextInputType.text),
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Container(
                      height: 6.5.h,
                      width: 13.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/Group 1890.png")))),
                ],
              ),
          ],
        ),
      ),
    ),
  );
}

Future<bool> showToast({@required String text, Color color}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0);

Widget custom_row({@required String title, @required String val}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Expanded(
        flex: 1,
        child: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      Expanded(
        flex: 1,
        child: Text(
          val,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
      )
    ],
  );
}
