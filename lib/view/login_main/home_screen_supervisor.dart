import 'package:flutter/material.dart';
import 'package:project/shared/components.dart';
import 'package:project/view/notifications/all_notification_screen.dart';
import '../../constants.dart';

class HomeScreenSupervisor extends StatelessWidget {
  final bool haveNotf = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.3,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(20),
                    bottomEnd: Radius.circular(20)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
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
                                text: "Khaled Ali",
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                              ),
                              defaultText(
                                  text: "Supervisor",
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0xffEDF0F8)),
                            ],
                          ),
                          CircleAvatar(
                            minRadius: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          chartBox("assets/images/circular progress 1.png",
                              "Regular", 200),
                          const SizedBox(
                            width: 10,
                          ),
                          chartBox("assets/images/circular progress 3.png",
                              "Completed", 150),
                          const SizedBox(
                            width: 10,
                          ),
                          chartBox("assets/images/circular progress.png",
                              "Delayed", 50),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          box("assets/images/enter (1).png", "Login", size),
                          box("assets/images/logout (-1.png", "Logout", size)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Shoud be in 100mm max from location",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      customDropdownMenu(
                          label: "Select Location",
                          hintText: "Select From Locations",
                          onChanged: (val) {},
                          itemList: []),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: defaultButton(
                            text: "Add Report",
                            onPressed: () {},
                            color: kPrimaryColor),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "New Tasks",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => buildTask(size),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Notifications",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        buildNotificationCard(context),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 2),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Stack buildTask(Size size) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          height: size.height * 0.15,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "6 june 2021 ----- 6 june 2021",
                  style: TextStyle(color: kGreyColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Design Landscape",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "More Details",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 10,
          height: 80,
          decoration: BoxDecoration(
              color: Color(0xffFFA007),
              borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(10),
                  bottomEnd: Radius.circular(10))),
        )
      ],
    );
  }
}

Widget box(String image, String text, Size size) => Container(
      width: size.width * 0.40,
      height: size.height * 0.2,
      decoration: BoxDecoration(
          color: const Color(0xffF6F6F6),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 120,
            height: 100,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );

Widget chartBox(
  String image,
  String text,
  int number,
) =>
    Container(
      width: 100,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            width: 70,
            height: 56,
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

Widget buildNotificationCard(context) => Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "6 june 2021",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Mohamed Ahmed add report",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
