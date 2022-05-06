// To parse this JSON data, do
//
//     final allMaintenanceModel = allMaintenanceModelFromJson(jsonString);

import 'dart:convert';

AllMaintenanceModel allMaintenanceModelFromJson(String str) =>
    AllMaintenanceModel.fromJson(json.decode(str));

String allMaintenanceModelToJson(AllMaintenanceModel data) =>
    json.encode(data.toJson());

class AllMaintenanceModel {
  AllMaintenanceModel({
    this.status,
    this.errNum,
    this.msg,
    this.maintainces,
  });

  bool status;
  String errNum;
  String msg;
  List<Maintaince> maintainces;

  factory AllMaintenanceModel.fromJson(Map<String, dynamic> json) =>
      AllMaintenanceModel(
        status: json["status"],
        errNum: json["errNum"],
        msg: json["msg"],
        maintainces: List<Maintaince>.from(
            json["maintainces"].map((x) => Maintaince.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "errNum": errNum,
        "msg": msg,
        "maintainces": List<dynamic>.from(maintainces.map((x) => x.toJson())),
      };
}

class Maintaince {
  Maintaince({
    this.id,
    this.date,
    this.decription,
    this.userId,
    this.vichelId,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.vichle,
  });

  int id;
  DateTime date;
  String decription;
  int userId;
  int vichelId;
  DateTime createdAt;
  DateTime updatedAt;
  User user;
  Vichle vichle;

  factory Maintaince.fromJson(Map<String, dynamic> json) => Maintaince(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        decription: json["decription"],
        userId: json["user_id"],
        vichelId: json["vichel_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: User.fromJson(json["user"]),
        vichle: Vichle.fromJson(json["vichle"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "decription": decription,
        "user_id": userId,
        "vichel_id": vichelId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user": user.toJson(),
        "vichle": vichle.toJson(),
      };
}

class User {
  User({
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

  factory User.fromJson(Map<String, dynamic> json) => User(
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
        token: json["token"],
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
        "token": token,
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

class Vichle {
  Vichle({
    this.id,
    this.number,
    this.name,
    this.model,
    this.status,
    this.kilometer,
    this.insuranceDateStart,
    this.insuranceDateEnd,
    this.insurancePhoto,
    this.licenseNumber,
    this.licenseDateEnd,
    this.licensePhoto,
    this.examinationDate,
    this.userId,
    this.driverLicense,
    this.locations,
    this.carPhoto,
    this.notes,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int number;
  String name;
  String model;
  String status;
  int kilometer;
  DateTime insuranceDateStart;
  DateTime insuranceDateEnd;
  String insurancePhoto;
  int licenseNumber;
  DateTime licenseDateEnd;
  String licensePhoto;
  DateTime examinationDate;
  int userId;
  String driverLicense;
  String locations;
  String carPhoto;
  String notes;
  DateTime createdAt;
  DateTime updatedAt;

  factory Vichle.fromJson(Map<String, dynamic> json) => Vichle(
        id: json["id"],
        number: json["number"],
        name: json["name"],
        model: json["model"],
        status: json["status"],
        kilometer: json["kilometer"],
        insuranceDateStart: DateTime.parse(json["insurance_date_start"]),
        insuranceDateEnd: DateTime.parse(json["insurance_date_end"]),
        insurancePhoto: json["insurance_photo"],
        licenseNumber: json["license_number"],
        licenseDateEnd: DateTime.parse(json["license_date_end"]),
        licensePhoto: json["license_photo"],
        examinationDate: DateTime.parse(json["examination_date"]),
        userId: json["user_id"],
        driverLicense: json["driver_license"],
        locations: json["locations"],
        carPhoto: json["car_photo"],
        notes: json["notes"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "number": number,
        "name": name,
        "model": model,
        "status": status,
        "kilometer": kilometer,
        "insurance_date_start":
            "${insuranceDateStart.year.toString().padLeft(4, '0')}-${insuranceDateStart.month.toString().padLeft(2, '0')}-${insuranceDateStart.day.toString().padLeft(2, '0')}",
        "insurance_date_end":
            "${insuranceDateEnd.year.toString().padLeft(4, '0')}-${insuranceDateEnd.month.toString().padLeft(2, '0')}-${insuranceDateEnd.day.toString().padLeft(2, '0')}",
        "insurance_photo": insurancePhoto,
        "license_number": licenseNumber,
        "license_date_end":
            "${licenseDateEnd.year.toString().padLeft(4, '0')}-${licenseDateEnd.month.toString().padLeft(2, '0')}-${licenseDateEnd.day.toString().padLeft(2, '0')}",
        "license_photo": licensePhoto,
        "examination_date":
            "${examinationDate.year.toString().padLeft(4, '0')}-${examinationDate.month.toString().padLeft(2, '0')}-${examinationDate.day.toString().padLeft(2, '0')}",
        "user_id": userId,
        "driver_license": driverLicense,
        "locations": locations,
        "car_photo": carPhoto,
        "notes": notes,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
