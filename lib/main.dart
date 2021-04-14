import 'package:flutter/material.dart';
import 'package:medi_quest/Complete_profile/complete_profile_screen.dart';
import 'package:medi_quest/Home/components/detail_screen.dart';
import 'package:medi_quest/Home/home_screen.dart';
import 'package:medi_quest/Sign_in/sign_in_page.dart';
import 'package:medi_quest/Sign_up/sign_up_screen.dart';
import 'package:medi_quest/forgot_password/forgot_password_screen.dart';
import 'package:medi_quest/otp/otp_screen.dart';
import 'package:medi_quest/pages/splash_page.dart';
import 'package:medi_quest/pages/splash_page2.dart';
import 'package:medi_quest/theme.dart';

import 'Profile/profile_screen.dart';

void main() {
  runApp(MyApp());
}

var routes = <String, WidgetBuilder>{
  "/Splash": (BuildContext context) => Splash(),
  "/SignInScreen": (BuildContext context) => SignInScreen(),
  "/ForgotPasswordScreen": (BuildContext context) => ForgotPasswordScreen(),
  "/SignUpScreen": (BuildContext context) => SignUpScreen(),
  "/CompleteProfileScreen": (BuildContext context) => CompleteProfileScreen(),
  "/OtpScreen": (BuildContext context) => OtpScreen(),
  "/HomeScreen": (BuildContext context) => HomeScreen(),
  "/DetailScreen": (BuildContext context) => DetailScreen(),
  "/ProfileScreen": (BuildContext context) => ProfileScreen(),

};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: routes,
    );
  }
}

