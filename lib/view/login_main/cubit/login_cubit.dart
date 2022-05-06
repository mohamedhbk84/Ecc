import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project/model/login_model.dart';
import 'package:project/networks/remote/dio_helper.dart';
import 'login_states.dart';

class AppLoginCubit extends Cubit<AppLoginStates> {
  AppLoginCubit() : super(InitialLoginState());
  static AppLoginCubit get(context) => BlocProvider.of(context);
  LoginModel loginModel;
  void userLogin(String phone, String password) {
    emit(LoginLoadingState());
    FirebaseMessaging.instance.getToken().then((value) {
      DioHelper.postData(
              url: "login",
              data: {"phone": phone, "password": password, "fb_token": value})
          .then((value) {
        loginModel = LoginModel.fromJson(value.data);
        emit(LoginSuccessState(loginModel));
      }).catchError((error) {
        print(error.toString());
        emit(LoginErrorState());
      });
    }).catchError((error) {
      print(error.toString());
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ShopLoginPasswordState());
  }
}
