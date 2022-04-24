import 'package:azhar/modules/boarding/on_boarding.dart';
import 'package:azhar/modules/home/home_screen.dart';
import 'package:azhar/shared/bloc_observer/bloc_opserver.dart';
import 'package:azhar/shared/network/local/cash_helper.dart';
import 'package:azhar/shared/styles/themes.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp();
  await CacheHelper.init();

  bool? onBoard = CacheHelper.getData(key: 'onBoarding');

  if (onBoard != null) {
    onBoard = true;
  } else {
    onBoard = false;
  }
  BlocOverrides.runZoned(
    () {
      runApp(MyApp(
        onBoarding: onBoard!,
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  final bool onBoarding;

  MyApp({Key? key, required this.onBoarding}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            debugPrint(
              'You have an error! ${snapshot.error.toString()}',
            );
            return const Text(
              'Something went wrong!',
            );
          } else if (snapshot.hasData) {
            Future.delayed(Duration(seconds: 3)).then((value) {
              FlutterNativeSplash.remove();
            });
            return onBoarding ? HomeScreen() : OnBoardingScreen();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
