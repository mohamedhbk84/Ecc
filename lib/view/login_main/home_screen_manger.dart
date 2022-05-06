import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/constants.dart';
import 'package:project/shared/components.dart';
import 'package:project/view/login_main/cubit/login_states.dart';
import 'package:project/view/notifications/all_notification_screen.dart';
import 'package:sizer/sizer.dart';
import 'cubit/login_cubit.dart';

class HomeScreen extends StatelessWidget {
  final bool haveNotf = true;
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppLoginCubit, AppLoginStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var model = AppLoginCubit.get(context).loginModel;
        return model != null
            ? Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: kPrimaryColor,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  title: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/logout (2).png",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/Icon ionic-md-refresh.png",
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
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
                    )
                  ],
                ),
                body: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 34.h,
                      decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadiusDirectional.only(
                            bottomStart: Radius.circular(20),
                            bottomEnd: Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            defaultText(
                                text: "Welcome",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff8A959E)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    defaultText(
                                      text: model.data.name,
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    defaultText(
                                        text: model.data.type,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                        color: const Color(0xffEDF0F8)),
                                  ],
                                ),
                                CircleAvatar(
                                  minRadius: 10.w,
                                  backgroundImage: NetworkImage(
                                    baseUrl + model.data.photo,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                defaultText(
                                    text: "TASKS UPDATE",
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                                defaultText(
                                    text: "Show all",
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.red)
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                chartBox(
                                    "assets/images/circular progress 1.png",
                                    "Regular",
                                    200),
                                const SizedBox(
                                  width: 10,
                                ),
                                chartBox(
                                    "assets/images/circular progress 3.png",
                                    "Completed",
                                    150),
                                const SizedBox(
                                  width: 10,
                                ),
                                chartBox("assets/images/circular progress.png",
                                    "Delayed", 50),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            defaultText(
                                text: "DAILY STATISTICS",
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.black),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                defaultText(
                                    text: "vehicles in Locations",
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    defaultText(
                                        text: "3/10",
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 116.sp,
                                      color: const Color(0xffF52D56),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 1,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                defaultText(
                                    text: "Attend Employees",
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    defaultText(
                                        text: "150/200",
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 116.sp,
                                      color: const Color(0xffF52D56),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 1,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                defaultText(
                                    text: "in Progress Projects",
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    defaultText(
                                        text: "7/10",
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 116.sp,
                                      color: const Color(0xffF52D56),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 1,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                defaultText(
                                    text: "Completed Projects",
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    defaultText(
                                        text: "2/10",
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Container(
                                      height: 2,
                                      width: 116.sp,
                                      color: const Color(0xffF52D56),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}

Widget chartBox(
  String image,
  String text,
  int number,
) =>
    Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            width: 55.sp,
            height: 56.sp,
          ),
          const SizedBox(
            height: 5,
          ),
          defaultText(
              text: text,
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 5,
          ),
          defaultText(
              text: number.toString(),
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ],
      ),
    );

Widget box(String image, String text) => Container(
      width: 127.sp,
      height: 186.sp,
      decoration: BoxDecoration(
          color: const Color(0xffF6F6F6),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 68.sp,
            height: 69.sp,
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Text(text)
        ],
      ),
    );
