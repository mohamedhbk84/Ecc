// To parse this JSON data, do
//
//     final allProjectModel = allProjectModelFromJson(jsonString);

import 'dart:convert';

AllProjectModel allProjectModelFromJson(String str) =>
    AllProjectModel.fromJson(json.decode(str));

String allProjectModelToJson(AllProjectModel data) =>
    json.encode(data.toJson());

class AllProjectModel {
  AllProjectModel({
    this.status,
    this.errNum,
    this.msg,
    this.projects,
  });

  bool status;
  String errNum;
  String msg;
  List<Project> projects;

  factory AllProjectModel.fromJson(Map<String, dynamic> json) =>
      AllProjectModel(
        status: json["status"],
        errNum: json["errNum"],
        msg: json["msg"],
        projects: List<Project>.from(
            json["projects"].map((x) => Project.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "errNum": errNum,
        "msg": msg,
        "projects": List<dynamic>.from(projects.map((x) => x.toJson())),
      };
}

class Project {
  Project({
    this.id,
    this.name,
    this.type,
    this.status,
    this.value,
    this.invoicesNo,
    this.startDate,
    this.endDate,
    this.deadline,
    this.locationId,
    this.employees,
    this.vehicles,
    this.schedualLink,
    this.contractLink,
    this.othersfile,
    this.taskCreator,
    this.photo,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.task,
    this.location,
  });

  int id;
  String name;
  String type;
  int status;
  String value;
  dynamic invoicesNo;
  DateTime startDate;
  DateTime endDate;
  DateTime deadline;
  int locationId;
  List<Employee> employees;
  List<dynamic> vehicles;
  String schedualLink;
  String contractLink;
  dynamic othersfile;
  List<Employee> taskCreator;
  String photo;
  String notes;
  DateTime createdAt;
  DateTime updatedAt;
  List<Task> task;
  Location location;

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        status: json["status"],
        value: json["value"],
        invoicesNo: json["invoices_no"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        deadline: DateTime.parse(json["deadline"]),
        locationId: json["location_id"],
        employees: List<Employee>.from(
            json["employees"].map((x) => Employee.fromJson(x))),
        vehicles: List<dynamic>.from(json["vehicles"].map((x) => x)),
        schedualLink: json["schedual_link"],
        contractLink: json["contract_link"],
        othersfile: json["othersfile"],
        taskCreator: List<Employee>.from(
            json["task_creator"].map((x) => Employee.fromJson(x))),
        photo: json["photo"],
        notes: json["notes"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        task: List<Task>.from(json["task"].map((x) => Task.fromJson(x))),
        location: Location.fromJson(json["location"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "status": status,
        "value": value,
        "invoices_no": invoicesNo,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "deadline":
            "${deadline.year.toString().padLeft(4, '0')}-${deadline.month.toString().padLeft(2, '0')}-${deadline.day.toString().padLeft(2, '0')}",
        "location_id": locationId,
        "employees": List<dynamic>.from(employees.map((x) => x.toJson())),
        "vehicles": List<dynamic>.from(vehicles.map((x) => x)),
        "schedual_link": schedualLink,
        "contract_link": contractLink,
        "othersfile": othersfile,
        "task_creator": List<dynamic>.from(taskCreator.map((x) => x.toJson())),
        "photo": photo,
        "notes": notes,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "task": List<dynamic>.from(task.map((x) => x.toJson())),
        "location": location.toJson(),
      };
}

class Employee {
  Employee({
    this.id,
    this.iqama,
    this.iqamaEndDate,
    this.iqamaphoto,
    this.passportnum,
    this.passportPhoto,
    this.passportEndDate,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.phone,
    this.photo,
    this.type,
    this.salary,
    this.employeetype,
    this.token,
    this.companyId,
    this.joiningDate,
    this.contractDate,
    this.insuranceStartDate,
    this.insuranceEndDate,
    this.insurancePhoto,
    this.contractFile,
    this.otherFiles,
    this.workStart,
    this.workEnd,
    this.workDayes,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int iqama;
  DateTime iqamaEndDate;
  String iqamaphoto;
  int passportnum;
  String passportPhoto;
  DateTime passportEndDate;
  String name;
  String email;
  dynamic emailVerifiedAt;
  int phone;
  String photo;
  String type;
  int salary;
  String employeetype;
  String token;
  int companyId;
  DateTime joiningDate;
  DateTime contractDate;
  DateTime insuranceStartDate;
  DateTime insuranceEndDate;
  String insurancePhoto;
  String contractFile;
  String otherFiles;
  String workStart;
  String workEnd;
  String workDayes;
  DateTime createdAt;
  DateTime updatedAt;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        iqama: json["iqama"],
        iqamaEndDate: DateTime.parse(json["iqama_end_date"]),
        iqamaphoto: json["iqamaphoto"],
        passportnum: json["passportnum"],
        passportPhoto: json["passport_photo"],
        passportEndDate: DateTime.parse(json["passport_end_date"]),
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        phone: json["phone"],
        photo: json["photo"],
        type: json["type"],
        salary: json["salary"],
        employeetype: json["employeetype"],
        token: json["token"] == null ? null : json["token"],
        companyId: json["company_id"],
        joiningDate: DateTime.parse(json["joining_date"]),
        contractDate: DateTime.parse(json["contract_date"]),
        insuranceStartDate: DateTime.parse(json["insurance_start_date"]),
        insuranceEndDate: DateTime.parse(json["insurance_end_date"]),
        insurancePhoto: json["insurance_photo"],
        contractFile: json["contract_file"],
        otherFiles: json["other_files"],
        workStart: json["work_start"],
        workEnd: json["work_end"],
        workDayes: json["work_dayes"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "iqama": iqama,
        "iqama_end_date":
            "${iqamaEndDate.year.toString().padLeft(4, '0')}-${iqamaEndDate.month.toString().padLeft(2, '0')}-${iqamaEndDate.day.toString().padLeft(2, '0')}",
        "iqamaphoto": iqamaphoto,
        "passportnum": passportnum,
        "passport_photo": passportPhoto,
        "passport_end_date":
            "${passportEndDate.year.toString().padLeft(4, '0')}-${passportEndDate.month.toString().padLeft(2, '0')}-${passportEndDate.day.toString().padLeft(2, '0')}",
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "phone": phone,
        "photo": photo,
        "type": type,
        "salary": salary,
        "employeetype": employeetype,
        "token": token == null ? null : token,
        "company_id": companyId,
        "joining_date":
            "${joiningDate.year.toString().padLeft(4, '0')}-${joiningDate.month.toString().padLeft(2, '0')}-${joiningDate.day.toString().padLeft(2, '0')}",
        "contract_date":
            "${contractDate.year.toString().padLeft(4, '0')}-${contractDate.month.toString().padLeft(2, '0')}-${contractDate.day.toString().padLeft(2, '0')}",
        "insurance_start_date":
            "${insuranceStartDate.year.toString().padLeft(4, '0')}-${insuranceStartDate.month.toString().padLeft(2, '0')}-${insuranceStartDate.day.toString().padLeft(2, '0')}",
        "insurance_end_date":
            "${insuranceEndDate.year.toString().padLeft(4, '0')}-${insuranceEndDate.month.toString().padLeft(2, '0')}-${insuranceEndDate.day.toString().padLeft(2, '0')}",
        "insurance_photo": insurancePhoto,
        "contract_file": contractFile,
        "other_files": otherFiles,
        "work_start": workStart,
        "work_end": workEnd,
        "work_dayes": workDayes,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Location {
  Location({
    this.id,
    this.title,
    this.location,
    this.lat,
    this.lang,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String title;
  String location;
  String lat;
  String lang;
  DateTime createdAt;
  DateTime updatedAt;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        title: json["title"],
        location: json["location"],
        lat: json["lat"],
        lang: json["lang"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "location": location,
        "lat": lat,
        "lang": lang,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Task {
  Task({
    this.id,
    this.name,
    this.users,
    this.start,
    this.end,
    this.projectId,
    this.createdAt,
    this.updatedAt,
    this.desription,
    this.status,
  });

  int id;
  String name;
  String users;
  DateTime start;
  DateTime end;
  int projectId;
  DateTime createdAt;
  DateTime updatedAt;
  String desription;
  int status;

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        id: json["id"],
        name: json["name"],
        users: json["users"],
        start: DateTime.parse(json["start"]),
        end: DateTime.parse(json["end"]),
        projectId: json["project_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        desription: json["desription"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "users": users,
        "start":
            "${start.year.toString().padLeft(4, '0')}-${start.month.toString().padLeft(2, '0')}-${start.day.toString().padLeft(2, '0')}",
        "end":
            "${end.year.toString().padLeft(4, '0')}-${end.month.toString().padLeft(2, '0')}-${end.day.toString().padLeft(2, '0')}",
        "project_id": projectId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "desription": desription,
        "status": status,
      };
}
