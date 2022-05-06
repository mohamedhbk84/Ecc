import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/model/all_projects_model.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/view/workflow/new_task_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../constants.dart';
import '../task_detail.dart';

class TasksScreen extends StatelessWidget {
  final Project model;
  const TasksScreen({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20),
                    topEnd: Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        minRadius: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildRowForChart("Completed", kGreenColor, 3),
                          buildRowForChart("In Progress", Colors.yellow, 12),
                          buildRowForChart("delayed", kRedColor, 5),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      defaultButton(
                          text: "Create New Task",
                          onPressed: () {
                            navigateTo(
                                context,
                                NewTaskScreen(
                                  model: model,
                                ));
                          },
                          color: kPrimaryColor,
                          width: 56.w),
                      SizedBox(
                        width: 2.w,
                      ),
                      Expanded(
                        child: defaultButton(
                          text: "Add Note",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                defaultText(
                    text: "Project tasks",
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                defaultText(
                    text: "${model.task.length} quantity",
                    color: kGreyColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ],
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  buildProjectTasksCard(model.task[index], context),
              separatorBuilder: (context, index) => SizedBox(
                    height: 2.h,
                  ),
              itemCount: model.task.length),
        ],
      ),
    );
  }
}

Widget buildRowForChart(String text, Color color, int number) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 3.w,
          height: 3.h,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
        SizedBox(
          width: 2.w,
        ),
        defaultText(
            text: text,
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 16),
        SizedBox(
          width: 20,
        ),
        defaultText(text: "$number", color: Colors.grey, fontSize: 16)
      ],
    );

Widget buildProjectTasksCard(Task model, context) => Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(15), topEnd: Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 1.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        defaultText(
                            text:
                                "${DateFormat("yyyy-MM-dd").format(model.start)} - - - - - ${DateFormat("yyyy-MM-dd").format(model.end)}",
                            color: kTitleColor,
                            fontSize: 12),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultText(
                            text: "Task :  ${model.name}",
                            color: kGreyColor,
                            fontSize: 12),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultText(
                            text: "Task Admin :${model.users}",
                            color: kGreyColor,
                            fontSize: 12),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultText(
                            text: "Assigned To",
                            color: kGreyColor,
                            fontSize: 12),
                        SizedBox(
                          height: 1.h,
                        ),
                        CircleAvatar(
                          // backgroundImage: NetworkImage(),
                          radius: 25,
                          backgroundColor: Colors.grey[300],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 9.w,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        defaultText(
                          text: model.status == 2
                              ? "Completed"
                              : model.status == 1
                                  ? "In Progress"
                                  : "Delayed",
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: model.status == 2
                              ? kGreenColor
                              : model.status == 1
                                  ? Colors.yellow
                                  : kRedColor,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    PopupMenuButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            value: 'edit',
                            child: Text('Edit'),
                          ),
                          PopupMenuItem(

                            value: 'delete',
                            child: InkWell(
                                onTap: () {
                                  AppCubit.get(context).deleteTask(model.id);
                                },
                                child: Text('Delete')),
                          )
                        ];
                      },
                      onSelected: (String value) {
                        print('You Click on po up menu item $value');
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 1,
                  color: kGreyColor,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          navigateTo(context, TaskDetails());
                        },
                        child: defaultText(
                            text: "More detailed",
                            color: kTitleColor,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                      const Text(
                        "Add Note",
                        style: TextStyle(
                            color: kGreenColor,
                            decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: 3.w,
          height: 12.h,
          decoration: BoxDecoration(
              color: model.status == 2
                  ? kGreenColor
                  : model.status == 1
                      ? Colors.yellow.shade900
                      : kRedColor,
              borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  bottomEnd: Radius.circular(20))),
        ),
      ],
    );
