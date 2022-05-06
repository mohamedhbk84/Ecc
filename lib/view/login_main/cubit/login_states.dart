import 'package:project/model/login_model.dart';

abstract class AppLoginStates {}

class InitialLoginState extends AppLoginStates {}

class LoginLoadingState extends AppLoginStates {}

class LoginSuccessState extends AppLoginStates {
  final LoginModel loginModel;
  LoginSuccessState(this.loginModel);
}

class LoginErrorState extends AppLoginStates {}

class ShopLoginPasswordState extends AppLoginStates {}
