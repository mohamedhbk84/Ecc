import 'dart:convert';

PaidVacationModel paidVacationModelFromJson(String str) =>
    PaidVacationModel.fromJson(json.decode(str));

String paidVacationModelToJson(PaidVacationModel data) =>
    json.encode(data.toJson());

class PaidVacationModel {
  PaidVacationModel({
    this.status,
    this.errNum,
    this.msg,
    this.vacations,
  });

  bool status;
  String errNum;
  String msg;
  List<Vacation> vacations;

  factory PaidVacationModel.fromJson(Map<String, dynamic> json) =>
      PaidVacationModel(
        status: json["status"],
        errNum: json["errNum"],
        msg: json["msg"],
        vacations: List<Vacation>.from(
            json["vacations"].map((x) => Vacation.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "errNum": errNum,
        "msg": msg,
        "vacations": List<dynamic>.from(vacations.map((x) => x.toJson())),
      };
}

class Vacation {
  Vacation({
    this.id,
    this.type,
    this.name,
    this.startDate,
    this.endDate,
    this.employee,
    this.userId,
    this.reason,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.submituser,
  });

  int id;
  String type;
  String name;
  DateTime startDate;
  DateTime endDate;
  Employee employee;
  int userId;
  String reason;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  Employee submituser;

  factory Vacation.fromJson(Map<String, dynamic> json) => Vacation(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        employee: Employee.fromJson(json["employee"]),
        userId: json["user_id"],
        reason: json["reason"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        submituser: Employee.fromJson(json["submituser"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "name": name,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "employee": employee.toJson(),
        "user_id": userId,
        "reason": reason,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "submituser": submituser.toJson(),
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
