import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/model/AllLocationsModel.dart';
import 'package:project/model/vehicle/add_maintenance_model.dart';
import 'package:project/model/all_employees.dart';
import 'package:project/model/all_projects_model.dart';
import 'package:project/model/all_tasks_model.dart';
import 'package:project/model/notifications/all_notifications_model.dart';
import 'package:project/model/vacation/all_vacation_model.dart';
import 'package:project/model/vacation/paid_vacation_model.dart';
import 'package:project/model/vehicle/all_maintenance-model.dart';
import 'package:project/model/vehicle/vehicle_model.dart';
import 'package:project/networks/remote/dio_helper.dart';
import 'package:project/networks/remote/end_points.dart';
import 'package:project/shared/cubit/app_states.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../constants.dart';
import '../../constants.dart';
import '../../model/all_employees.dart';
import '../../model/all_employees.dart';
import '../../model/all_employees.dart';
import '../../model/all_employees.dart';
import '../../model/all_employees.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  // AllTasks allTasks;
  // void getAllTasks() {
  //   emit(GetAllTasksLoadingState());
  //   DioHelper.getData(url: ALLTASKS).then((value) {
  //     allTasks = AllTasks.fromJson(value.data);
  //     emit(GetAllTasksSuccessState());
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(GetAllTasksErrorState());
  //   });
  // }

  void createNewTask(
      {String name,
      users,
      String startDate,
      String endDate,
      int ProjectId,
      String description}) {
    DioHelper.postData(url: "Add-Task", data: {
      "name": name,
      "users": users,
      "start_date": startDate,
      "end_date": endDate,
      "desription": description,
      "project_id": ProjectId
    }).then((value) {
      print(value.data);
      getAllProjects();
      emit(CreateNewTaskSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(CreateNewTaskErrorState());
    });
  }

  void createNewProject({
    String name,
    String type,
    String startDate,
    String endDate,
    String deadline,
    String locationId,
    String schedualLink,
    String contractLink,
    String taskCreator,
    String employees,
    String vehicles,
    String notes,
    String photo,
    String projectId,
  }) {
    DioHelper.postData(url: ADDPROJECT, data: {
      "name": name,
      "type": type,
      "start_date": startDate,
      "end_date": endDate,
      "deadline": deadline,
      "location_id": locationId,
      "schedual_link": schedualLink,
      "contract_link": contractLink,
      "task_creator": taskCreator,
      "employees": employees,
      "vehicles": vehicles,
      "notes": notes,
      "photo": photo,
      "project_id": projectId,
    }).then((value) {
      emit(CreateNewProjectSuccessState());
    }).catchError((error) {
      emit(CreateNewProjectErrorState());
    });
  }

  AllEmployeesModel allEmployees;
  void getAllEmployees() {
    emit(GetAllEmployeesLoadingState());
    DioHelper.postData(
        url: "All-Emploes",
        token: token,
        data: {"user_id": userId, "company_id": companyId}).then((value) async {
      allEmployees = await AllEmployeesModel.fromJson(value.data);
      print(allEmployees.status);
      emit(GetAllEmployeesSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetAllEmployeesErrorState());
    });
  }

  AllVehicleModel allVehicles;
  void getAllVehicles() {
    emit(GetAllVehiclesLoadingState());
    DioHelper.getData(
      url: "All-Vehicles",
    ).then((value) {
      allVehicles = AllVehicleModel.fromJson(value.data);
      emit(GetAllVehiclesSuccessState());
    }).catchError((error) {
      emit(GetAllVehiclesErrorState());
    });
  }

  Future<void> addVehicle(
      {@required name,
        @required number,
        @required model,
        @required kilometer,
        @required insuranceDateStart,
        @required insuranceDateEnd,
        @required licenseNumber,
        @required driverLicense,
        @required licenseDateEnd,
        @required examinationDate,
        @required userId,
        @required locations,
        @required notes,
        @required carPhoto,
        @required insurancePhoto,
        @required licensePhoto,
        @required status}) async {
    print("insuranceDateStart = ${insuranceDateStart}");
    print("examinationDate = ${examinationDate}");
    print("licenseDateEnd = ${licenseDateEnd}");
    print("insuranceDateEnd = ${insuranceDateEnd}");
    print("name == $name");
    print("number == $number");
    print("model == $model");
    print("kilometer == $kilometer");
    print("licenseNumber == $licenseNumber");
    print("driverLicense == $driverLicense");
    print("userId == $userId");
    print("locations == $locations");
    print("notes == $locations");
    print("status == $status");


    FormData formData = FormData.fromMap({
      "name": name,
      "number": number,
      "model": model,
      "kilometer": kilometer,
      "insurance_date_start": insuranceDateStart,
      "insurance_date_end": insuranceDateEnd,
      "license_number": licenseNumber,
      "driver_license": driverLicense,
      "license_date_end": licenseDateEnd,
      "examination_date": examinationDate,
      "user_id": userId,
      "locations": locations,
      "notes": notes,
      // "car_photo": carPhoto!=null? await MultipartFile.fromFile(carPhoto.path, filename: carPhoto.path.split('/').last):"",
      // "insurance_photo": insurancePhoto!=null? await MultipartFile.fromFile(insurancePhoto.path, filename: insurancePhoto.path.split('/').last):"",
      // "license_photo": licensePhoto!=null? await MultipartFile.fromFile(licensePhoto.path, filename: licensePhoto.path.split('/').last):"",
      "status": status,
    });

    DioHelper.postData(url: "Add-Vehicles",token: token, data: formData).then((value) {
      print(value.data);
      getAllVehicles();
    }).catchError((error) {
      print(error.toString());
    });

  }

  void deleteVehicle(vehicleId) {
    DioHelper.getData(url: "Delete-Vehicles/${vehicleId}").then((value) {
      print(value.toString());
      getAllVehicles();
    }).catchError((error) {
      print(error.toString());
    });
  }

  AllProjectModel allProject;
  void getAllProjects() {
    emit(GetAllProjectLoadingState());
    DioHelper.getData(url: "All-Project").then((value) {
      allProject = AllProjectModel.fromJson(value.data);
      emit(GetAllProjectSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetAllProjectErrorState());
    });
  }

  AllMaintenanceModel maintenanceModel;
  void getAllMaintenance(vehicleId, userId) {
    emit(GetAllMaintenanceLoadingState());
    DioHelper.getData(url: "all-Maintaincess/$vehicleId/$userId").then((value) {
      maintenanceModel = AllMaintenanceModel.fromJson(value.data);
      emit(GetAllMaintenanceSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetAllMaintenanceErrorState());
    });
  }

  void deleteTask(taskId) {
    DioHelper.getData(url: "Delete-Task/${taskId}").then((value) {
      print(value.data);
      getAllProjects();
    }).catchError((error) {
      print(error.toString());
    });
  }

  AddMaintenanceModel addMaintenanceModel;
  void addMaintenance({
    description,
    userId,
    vehicleId,
    date,
  }) {
    DioHelper.postData(url: "add-Maintaincess", data: {
      "decription": description,
      "user_id": userId,
      "vichel_id": vehicleId,
      "date": date,
    }).then((value) {
      addMaintenanceModel = AddMaintenanceModel.fromJson(value.data);
      getAllMaintenance(vehicleId, userId);
      emit(AddMaintenanceSuccessState(addMaintenanceModel));
    }).catchError((error) {
      print(error.toString());
      emit(AddMaintenanceErrorState());
    });
  }

  VacationModel vacationModel;
  void getAllVacations() {
    emit(GetAllVehiclesLoadingState());
    DioHelper.getData(url: "All-Vacation").then((value) {
      vacationModel = VacationModel.fromJson(value.data);
      emit(GetAllVehiclesSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetAllVehiclesErrorState());
    });
  }

  PaidVacationModel paidVacationModel;
  void getPaidVacation() {
    emit(GetPaidVacationLoadingState());
    DioHelper.getData(url: "Paid-Vacation").then((value) {
      paidVacationModel = PaidVacationModel.fromJson(value.data);
      emit(GetPaidVacationSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetPaidVacationErrorState());
    });
  }

  void acceptVacation(userId, vacationId) {
    DioHelper.postData(
        url: "Accept-Vacation",
        data: {"user_id": userId, "vacation_id": vacationId}).then((value) {
      getAllVacations();
    }).catchError((error) {
      print(error.toString());
    });
  }

  void cancelVacation(userId, vacationId) {
    DioHelper.postData(
        url: "Cancel-Vacation",
        data: {"user_id": userId, "vacation_id": vacationId}).then((value) {
      getAllVacations();
    }).catchError((error) {
      print(error.toString());
    });
  }

  AllNotificationModel allNotificationModel;
  void getAllNotification() {
    DioHelper.getData(url: "All-notifications").then((value) {
      allNotificationModel = AllNotificationModel.fromJson(value.data);
      emit(GetAllNotificationSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetAllNotificationErrorState());
    });
  }


  //============================================================================
  Future<AllEmployeesModel> getEmployees() async{
    AllEmployeesModel allEmployees;
    emit(GetAllEmployeesLoadingState());

    Response response = await DioHelper.postData(
        url: "All-Emploes",
        token: token,
        data: {"user_id": "1", "company_id": "1"});
    // print("response.body");
    // http.Response response = await http.post(Uri.parse("https://active4web.com/ECC/api/All-Emploes"),body: {"user_id": userId, "company_id": companyId},headers: {"Authorization": token ?? "",
    //   "Content-Type": "application/json"});
    print(response.data);
    allEmployees = AllEmployeesModel.fromJson(response.data);
    return allEmployees;

  }
  Future<AllLocationsModel> getLocations() async{
    AllLocationsModel allLocations;
    emit(GetAllEmployeesLoadingState());

    Response response = await DioHelper.getData(
        url: "All-Location",
        token: token,
       );
    // print("response.body");
    // http.Response response = await http.post(Uri.parse("https://active4web.com/ECC/api/All-Emploes"),body: {"user_id": userId, "company_id": companyId},headers: {"Authorization": token ?? "",
    //   "Content-Type": "application/json"});
    print(response.data);
    allLocations = AllLocationsModel.fromJson(response.data);
    print("uuuuuuuuu${allLocations.msg}");
    return allLocations;

  }
}
