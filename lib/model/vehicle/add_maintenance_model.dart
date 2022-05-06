import 'dart:convert';

AddMaintenanceModel addMaintenanceModelFromJson(String str) =>
    AddMaintenanceModel.fromJson(json.decode(str));

String addMaintenanceModelToJson(AddMaintenanceModel data) =>
    json.encode(data.toJson());

class AddMaintenanceModel {
  AddMaintenanceModel({
    this.status,
    this.errNum,
    this.msg,
  });

  bool status;
  String errNum;
  String msg;

  factory AddMaintenanceModel.fromJson(Map<String, dynamic> json) =>
      AddMaintenanceModel(
        status: json["status"],
        errNum: json["errNum"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "errNum": errNum,
        "msg": msg,
      };
}
