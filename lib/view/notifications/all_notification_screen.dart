import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/model/notifications/all_notifications_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:project/view/notifications/send_notification_screen.dart';
import 'package:sizer/sizer.dart';

import '../../constants.dart';

class AllNotificationScreen extends StatelessWidget {
  const AllNotificationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Notification",
          search: false,
        ),
        body: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          bloc: AppCubit.get(context)..getAllNotification(),
          builder: (context, state) {
            final model = AppCubit.get(context).allNotificationModel;
            return model != null
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: defaultButton(
                              text: "Send Notification",
                              onPressed: () {
                                navigateTo(context, SendNotificationScreen());
                              },
                              color: kPrimaryColor),
                        ),
                        ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>
                                buildNotificationCard(
                                    context, model.notifications[index]),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 2.h,
                                ),
                            itemCount: model.notifications.length)
                      ],
                    ),
                  )
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

Widget buildNotificationCard(context, Notifications model) => Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat("d-m-y").format(model.createdAt),
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: Colors.grey),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "${model.employee} + ${model.notes}",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
