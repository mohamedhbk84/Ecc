import 'package:project/model/vehicle/add_maintenance_model.dart';

abstract class AppStates {}

class AppInitialState extends AppStates {}

class GetAllTasksLoadingState extends AppStates {}

class GetAllTasksSuccessState extends AppStates {}

class GetAllTasksErrorState extends AppStates {}

class CreateNewTaskSuccessState extends AppStates {}

class CreateNewTaskErrorState extends AppStates {}

class CreateNewProjectSuccessState extends AppStates {}

class CreateNewProjectErrorState extends AppStates {}

class GetAllEmployeesLoadingState extends AppStates {}

class GetAllEmployeesSuccessState extends AppStates {}

class GetAllEmployeesErrorState extends AppStates {}

class GetAllProjectLoadingState extends AppStates {}

class GetAllProjectSuccessState extends AppStates {}

class GetAllProjectErrorState extends AppStates {}

class GetAllVehiclesLoadingState extends AppStates {}

class GetAllVehiclesSuccessState extends AppStates {}

class GetAllVehiclesErrorState extends AppStates {}

class GetAllMaintenanceLoadingState extends AppStates {}

class GetAllMaintenanceSuccessState extends AppStates {}

class GetAllMaintenanceErrorState extends AppStates {}

class AddMaintenanceSuccessState extends AppStates {
  final AddMaintenanceModel model;
  AddMaintenanceSuccessState(this.model);
}

class AddMaintenanceErrorState extends AppStates {}

class GetAllVacationLoadingState extends AppStates {}

class GetAllVacationSuccessState extends AppStates {}

class GetAllVacationErrorState extends AppStates {}

class GetPaidVacationLoadingState extends AppStates {}

class GetPaidVacationSuccessState extends AppStates {}

class GetPaidVacationErrorState extends AppStates {}

class GetAllNotificationSuccessState extends AppStates {}

class GetAllNotificationErrorState extends AppStates {}
