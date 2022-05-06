class LoginModel {
  bool status;
  String errNum;
  String msg;
  Data data;

  LoginModel({this.status, this.errNum, this.msg, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['errNum'] = this.errNum;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  int iqama;
  String iqamaEndDate;
  String iqamaphoto;
  int passportnum;
  String passportPhoto;
  String passportEndDate;
  String name;
  String email;
  String emailVerifiedAt;
  int phone;
  String photo;
  String type;
  int salary;
  String employeetype;
  String token;
  int companyId;
  String joiningDate;
  String contractDate;
  String insuranceStartDate;
  String insuranceEndDate;
  String insurancePhoto;
  String contractFile;
  String otherFiles;
  String workStart;
  String workEnd;
  String workDayes;
  String createdAt;
  String updatedAt;
  String apiToken;
  Permission permission;

  Data(
      {this.id,
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
      this.apiToken,
      this.permission});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iqama = json['iqama'];
    iqamaEndDate = json['iqama_end_date'];
    iqamaphoto = json['iqamaphoto'];
    passportnum = json['passportnum'];
    passportPhoto = json['passport_photo'];
    passportEndDate = json['passport_end_date'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    phone = json['phone'];
    photo = json['photo'];
    type = json['type'];
    salary = json['salary'];
    employeetype = json['employeetype'];
    token = json['token'];
    companyId = json['company_id'];
    joiningDate = json['joining_date'];
    contractDate = json['contract_date'];
    insuranceStartDate = json['insurance_start_date'];
    insuranceEndDate = json['insurance_end_date'];
    insurancePhoto = json['insurance_photo'];
    contractFile = json['contract_file'];
    otherFiles = json['other_files'];
    workStart = json['work_start'];
    workEnd = json['work_end'];
    workDayes = json['work_dayes'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    apiToken = json['api_token'];
    permission = json['permission'] != null
        ? new Permission.fromJson(json['permission'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['iqama'] = this.iqama;
    data['iqama_end_date'] = this.iqamaEndDate;
    data['iqamaphoto'] = this.iqamaphoto;
    data['passportnum'] = this.passportnum;
    data['passport_photo'] = this.passportPhoto;
    data['passport_end_date'] = this.passportEndDate;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['phone'] = this.phone;
    data['photo'] = this.photo;
    data['type'] = this.type;
    data['salary'] = this.salary;
    data['employeetype'] = this.employeetype;
    data['token'] = this.token;
    data['company_id'] = this.companyId;
    data['joining_date'] = this.joiningDate;
    data['contract_date'] = this.contractDate;
    data['insurance_start_date'] = this.insuranceStartDate;
    data['insurance_end_date'] = this.insuranceEndDate;
    data['insurance_photo'] = this.insurancePhoto;
    data['contract_file'] = this.contractFile;
    data['other_files'] = this.otherFiles;
    data['work_start'] = this.workStart;
    data['work_end'] = this.workEnd;
    data['work_dayes'] = this.workDayes;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['api_token'] = this.apiToken;
    if (this.permission != null) {
      data['permission'] = this.permission.toJson();
    }
    return data;
  }
}

class Permission {
  int id;
  int userId;
  String addEmployee;
  String editEmployee;
  String deleteEmployee;
  String viewEmployee;
  String addProjects;
  String editProjects;
  String deleteProjects;
  String viewProjects;
  String addLocations;
  String editLocations;
  String deleteLocations;
  String viewLocations;
  String addVehicle;
  String editVehicle;
  String deleteVehicle;
  String viewVehicle;
  String addInvoice;
  String editInvoice;
  String deleteInvoice;
  String viewInvoice;
  String paidInvoice;
  String unpaidInvoice;
  String approvalPayroll;
  String paidPayroll;
  String unpaidPayroll;
  String addBounce;
  String editBounce;
  String deleteBounce;
  String viewBounce;
  String approvalOvertime;
  String addVacations;
  String editVacations;
  String viewVacations;
  String deleteVacations;
  String approvalVacations;
  String rejectVacations;
  String addTask;
  Null editTask;
  String viewTask;
  String deleteTask;
  String addReports;
  String editReports;
  String viewReports;
  String deleteReports;
  String approveReports;
  String addnoteReports;
  String addAttendance;
  String editAttendance;
  String deleteAttendance;
  String viewAttendance;
  String approveAttendance;
  String addCustomerlist;
  String editCustomerlist;
  String deleteCustomerlist;
  String viewCustomerlist;
  String addreportCustomerlist;
  String addSupplierlist;
  String editSupplierlist;
  String deleteSupplierlist;
  String viewSupplierlist;
  String addreportSupplierlist;
  String createdAt;
  String updatedAt;

  Permission(
      {this.id,
      this.userId,
      this.addEmployee,
      this.editEmployee,
      this.deleteEmployee,
      this.viewEmployee,
      this.addProjects,
      this.editProjects,
      this.deleteProjects,
      this.viewProjects,
      this.addLocations,
      this.editLocations,
      this.deleteLocations,
      this.viewLocations,
      this.addVehicle,
      this.editVehicle,
      this.deleteVehicle,
      this.viewVehicle,
      this.addInvoice,
      this.editInvoice,
      this.deleteInvoice,
      this.viewInvoice,
      this.paidInvoice,
      this.unpaidInvoice,
      this.approvalPayroll,
      this.paidPayroll,
      this.unpaidPayroll,
      this.addBounce,
      this.editBounce,
      this.deleteBounce,
      this.viewBounce,
      this.approvalOvertime,
      this.addVacations,
      this.editVacations,
      this.viewVacations,
      this.deleteVacations,
      this.approvalVacations,
      this.rejectVacations,
      this.addTask,
      this.editTask,
      this.viewTask,
      this.deleteTask,
      this.addReports,
      this.editReports,
      this.viewReports,
      this.deleteReports,
      this.approveReports,
      this.addnoteReports,
      this.addAttendance,
      this.editAttendance,
      this.deleteAttendance,
      this.viewAttendance,
      this.approveAttendance,
      this.addCustomerlist,
      this.editCustomerlist,
      this.deleteCustomerlist,
      this.viewCustomerlist,
      this.addreportCustomerlist,
      this.addSupplierlist,
      this.editSupplierlist,
      this.deleteSupplierlist,
      this.viewSupplierlist,
      this.addreportSupplierlist,
      this.createdAt,
      this.updatedAt});

  Permission.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    addEmployee = json['add_employee'];
    editEmployee = json['edit_employee'];
    deleteEmployee = json['delete_employee'];
    viewEmployee = json['view_employee'];
    addProjects = json['add_Projects'];
    editProjects = json['edit_Projects'];
    deleteProjects = json['delete_Projects'];
    viewProjects = json['view_Projects'];
    addLocations = json['add_Locations'];
    editLocations = json['edit_Locations'];
    deleteLocations = json['delete_Locations'];
    viewLocations = json['view_Locations'];
    addVehicle = json['add_vehicle'];
    editVehicle = json['edit_vehicle'];
    deleteVehicle = json['delete_vehicle'];
    viewVehicle = json['view_vehicle'];
    addInvoice = json['add_Invoice'];
    editInvoice = json['edit_Invoice'];
    deleteInvoice = json['delete_Invoice'];
    viewInvoice = json['view_Invoice'];
    paidInvoice = json['paid_Invoice'];
    unpaidInvoice = json['unpaid_Invoice'];
    approvalPayroll = json['approval_payroll'];
    paidPayroll = json['paid_payroll'];
    unpaidPayroll = json['unpaid_payroll'];
    addBounce = json['add_bounce'];
    editBounce = json['edit_bounce'];
    deleteBounce = json['delete_bounce'];
    viewBounce = json['view_bounce'];
    approvalOvertime = json['approval_overtime'];
    addVacations = json['add_vacations'];
    editVacations = json['edit_vacations'];
    viewVacations = json['view_vacations'];
    deleteVacations = json['delete_vacations'];
    approvalVacations = json['approval_vacations'];
    rejectVacations = json['reject_vacations'];
    addTask = json['add_task'];
    editTask = json['edit_task'];
    viewTask = json['view_task'];
    deleteTask = json['delete_task'];
    addReports = json['add_reports'];
    editReports = json['edit_reports'];
    viewReports = json['view_reports'];
    deleteReports = json['delete_reports'];
    approveReports = json['approve_reports'];
    addnoteReports = json['addnote_reports'];
    addAttendance = json['add_attendance'];
    editAttendance = json['edit_attendance'];
    deleteAttendance = json['delete_attendance'];
    viewAttendance = json['view_attendance'];
    approveAttendance = json['approve_attendance'];
    addCustomerlist = json['add_customerlist'];
    editCustomerlist = json['edit_customerlist'];
    deleteCustomerlist = json['delete_customerlist'];
    viewCustomerlist = json['view_customerlist'];
    addreportCustomerlist = json['addreport_customerlist'];
    addSupplierlist = json['add_supplierlist'];
    editSupplierlist = json['edit_supplierlist'];
    deleteSupplierlist = json['delete_supplierlist'];
    viewSupplierlist = json['view_supplierlist'];
    addreportSupplierlist = json['addreport_supplierlist'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['add_employee'] = this.addEmployee;
    data['edit_employee'] = this.editEmployee;
    data['delete_employee'] = this.deleteEmployee;
    data['view_employee'] = this.viewEmployee;
    data['add_Projects'] = this.addProjects;
    data['edit_Projects'] = this.editProjects;
    data['delete_Projects'] = this.deleteProjects;
    data['view_Projects'] = this.viewProjects;
    data['add_Locations'] = this.addLocations;
    data['edit_Locations'] = this.editLocations;
    data['delete_Locations'] = this.deleteLocations;
    data['view_Locations'] = this.viewLocations;
    data['add_vehicle'] = this.addVehicle;
    data['edit_vehicle'] = this.editVehicle;
    data['delete_vehicle'] = this.deleteVehicle;
    data['view_vehicle'] = this.viewVehicle;
    data['add_Invoice'] = this.addInvoice;
    data['edit_Invoice'] = this.editInvoice;
    data['delete_Invoice'] = this.deleteInvoice;
    data['view_Invoice'] = this.viewInvoice;
    data['paid_Invoice'] = this.paidInvoice;
    data['unpaid_Invoice'] = this.unpaidInvoice;
    data['approval_payroll'] = this.approvalPayroll;
    data['paid_payroll'] = this.paidPayroll;
    data['unpaid_payroll'] = this.unpaidPayroll;
    data['add_bounce'] = this.addBounce;
    data['edit_bounce'] = this.editBounce;
    data['delete_bounce'] = this.deleteBounce;
    data['view_bounce'] = this.viewBounce;
    data['approval_overtime'] = this.approvalOvertime;
    data['add_vacations'] = this.addVacations;
    data['edit_vacations'] = this.editVacations;
    data['view_vacations'] = this.viewVacations;
    data['delete_vacations'] = this.deleteVacations;
    data['approval_vacations'] = this.approvalVacations;
    data['reject_vacations'] = this.rejectVacations;
    data['add_task'] = this.addTask;
    data['edit_task'] = this.editTask;
    data['view_task'] = this.viewTask;
    data['delete_task'] = this.deleteTask;
    data['add_reports'] = this.addReports;
    data['edit_reports'] = this.editReports;
    data['view_reports'] = this.viewReports;
    data['delete_reports'] = this.deleteReports;
    data['approve_reports'] = this.approveReports;
    data['addnote_reports'] = this.addnoteReports;
    data['add_attendance'] = this.addAttendance;
    data['edit_attendance'] = this.editAttendance;
    data['delete_attendance'] = this.deleteAttendance;
    data['view_attendance'] = this.viewAttendance;
    data['approve_attendance'] = this.approveAttendance;
    data['add_customerlist'] = this.addCustomerlist;
    data['edit_customerlist'] = this.editCustomerlist;
    data['delete_customerlist'] = this.deleteCustomerlist;
    data['view_customerlist'] = this.viewCustomerlist;
    data['addreport_customerlist'] = this.addreportCustomerlist;
    data['add_supplierlist'] = this.addSupplierlist;
    data['edit_supplierlist'] = this.editSupplierlist;
    data['delete_supplierlist'] = this.deleteSupplierlist;
    data['view_supplierlist'] = this.viewSupplierlist;
    data['addreport_supplierlist'] = this.addreportSupplierlist;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
