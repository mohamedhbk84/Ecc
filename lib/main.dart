import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project/constants.dart';
import 'package:project/networks/remote/dio_helper.dart';
import 'package:project/shared/bloc_observer.dart';
import 'package:project/shared/components.dart';
import 'package:project/shared/cubit/app_cubit.dart';
import 'package:project/view/layout/home_layout.dart';
import 'package:project/view/login_main/cubit/login_cubit.dart';
import 'package:project/view/login_main/first_screen.dart';
import 'package:sizer/sizer.dart';

GetStorage getStorage = GetStorage();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  DioHelper.init();
  await GetStorage.init();
  token = getStorage.read("token") ?? null;
  FirebaseMessaging.onMessage.listen((event) {
    print(event.data.toString());
    showToast(text: "onMessage notification", color: Colors.green);
  });
  FirebaseMessaging.onMessageOpenedApp.listen((event) {
    print(event.data.toString());
    showToast(text: "onMessageOpenedApp notification", color: Colors.green);
  });
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(
    token: token,
  ));
}

class MyApp extends StatelessWidget {
  final String token;
  MyApp({Key key, this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppLoginCubit(),
        ),
        BlocProvider(create: (context) => AppCubit()),
      ],
      child: MaterialApp(
        title: 'ECC Erp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kScaffoldColor,
        ),
        home: Sizer(
            builder: (context, orientation, deviceType) =>
                token == null ? IntroScreen() : HomeLayout()),
      ),
    );
  }
}
