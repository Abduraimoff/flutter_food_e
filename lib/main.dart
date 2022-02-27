import 'package:flutter/material.dart';
import 'package:food_e/pages/authorization/get_started_page.dart';
import 'package:food_e/pages/authorization/login_page.dart';
import 'package:food_e/pages/authorization/register_page.dart';
import 'package:food_e/pages/home_page/home_page.dart';
import 'package:food_e/pages/intro_page/page_one.dart';
import 'package:food_e/pages/intro_page/page_three.dart';
import 'package:food_e/pages/intro_page/page_two.dart';
import 'package:food_e/pages/root_app.dart';
import 'package:food_e/pages/splash_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const IntroOnePage(),
    routes: {
      '/splashPage': (_) => const SplashPage(),
      '/introOne': (_) => const IntroOnePage(),
      '/introTwo': (_) => const IntroTwoPage(),
      '/introThree': (_) => const IntroThreePage(),
      '/getStarted': (_) => const GetStartedPage(),
      '/register': (_) => const RegisterPage(),
      '/login': (_) => const LoginPage(),
      '/root': (_) => const RootApp(),
      '/homePage': (_) => const HomePage(),
    },
  ));
}
