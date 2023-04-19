import 'package:flutter/material.dart';
import 'package:ui_app/foody_app/screens/Auth/signin_phonenumber_screen.dart';
import 'package:ui_app/foody_app/screens/Auth/signup_screen.dart';
import 'package:ui_app/foody_app/screens/Auth/verify_otp.dart';
import 'package:ui_app/foody_app/screens/Home/home_screen.dart';
import 'package:ui_app/foody_app/screens/Profiles/profiles_screen.dart';
import 'package:ui_app/foody_app/screens/Wellcome/letyouin_screen.dart';
import 'package:ui_app/foody_app/screens/Wellcome/splash_screen.dart';
import 'package:ui_app/foody_app/screens/Wellcome/walkthrough_screen.dart';
import 'package:ui_app/foody_app/screens/Wellcome/welcome_screen.dart';
import 'package:ui_app/foody_app/widgets/alertdialog_custom.dart';

class FoodyApp extends StatelessWidget {
  const FoodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[50],
      //   elevation: 0,
      // ),
      body: HomeScreen(),
    );
  }
}
