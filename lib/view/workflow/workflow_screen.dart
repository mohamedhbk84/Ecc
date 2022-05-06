import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/model/all_projects_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:project/view/project/project_details.dart';
import 'package:project/view/workflow/workflow_projectdetails_screen.dart';
import 'package:sizer/sizer.dart';

import '../../constants.dart';

class WorkflowScreen extends StatelessWidget {
  WorkflowScreen({Key key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Workflow",
        search: true,
        controller: searchController,
        canPop: false,
        haveNotf: true,
        haveBell: true,
      ),
      body: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        bloc: AppCubit.get(context)..getAllProjects(),
        builder: (context, state) {
          final model = AppCubit.get(context).allProject;
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.h, vertical: 2.h),
                        child: defaultText(
                          text: "projects List (${model.projects.length})",
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                model != null
                    ? ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            buildProjectCard(context, model.projects[index]),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 2,
                            ),
                        itemCount: model.projects.length)
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget buildProjectCard(context, Project model) => InkWell(
      onTap: () {
        navigateTo(
            context,
            WorkFlowProjectDetails(
              model: model,
            ));
      },
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(10),
                bottomStart: Radius.circular(10))),
        margin: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  height: 22.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(baseUrl + model.photo))),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  width: 25.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: kRedColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: defaultText(text: model.type, fontSize: 15)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultText(
                          text: model.name,
                          color: kRedColor,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        children: [
                          defaultText(
                              text: "start Date :  ",
                              color: kTitleColor,
                              fontSize: 13),
                          defaultText(
                              text: DateFormat("yyyy-MM-dd")
                                  .format(model.startDate),
                              color: kGreyColor,
                              fontSize: 13)
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        children: [
                          defaultText(
                              text: "Deadline :    ",
                              color: kTitleColor,
                              fontSize: 13),
                          defaultText(
                              text: DateFormat("yyyy-MM-dd")
                                  .format(model.deadline),
                              color: kGreyColor,
                              fontSize: 13)
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 10.w,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      defaultText(
                          text: "Completed",
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: kGreenColor)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
