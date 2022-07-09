// ignore_for_file: prefer_const_constructors

import 'package:bwa_airplane/cubit/page_cubit.dart';
import 'package:bwa_airplane/ui/pages/bonus_page.dart';
import 'package:bwa_airplane/ui/pages/get_started_page.dart';
import 'package:bwa_airplane/ui/pages/main_page.dart';
import 'package:bwa_airplane/ui/pages/signup_page.dart';
import 'package:bwa_airplane/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => SplashPage(),
          "/get-started": (context) => GetStartedPage(),
          "/sign-up": (context) => SignUpPage(),
          "/bonus": (context) => BonusPage(),
          "/main": (context) => MainPage(),
        },
      ),
    );
  }
}
