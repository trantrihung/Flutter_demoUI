import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/foody_app/screens/Auth/signin_phonenumber_screen.dart';
import 'package:ui_app/foody_app/screens/Auth/signup_screen.dart';
import 'package:ui_app/foody_app/screens/Auth/verify_otp.dart';
import 'package:ui_app/foody_app/screens/Home/home_screen.dart';
import 'package:ui_app/foody_app/screens/MyCart/my_cart.dart';
import 'package:ui_app/foody_app/screens/Profiles/profiles_screen.dart';
import 'package:ui_app/foody_app/screens/SpecialOffers/special_offers.dart';
import 'package:ui_app/foody_app/screens/Wellcome/letyouin_screen.dart';
import 'package:ui_app/foody_app/screens/Wellcome/splash_screen.dart';
import 'package:ui_app/foody_app/screens/Wellcome/walkthrough_screen.dart';
import 'package:ui_app/foody_app/screens/Wellcome/welcome_screen.dart';
import 'package:ui_app/foody_app/widgets/alertdialog_custom.dart';

import 'utils/theme.dart';

class FoodyApp extends StatelessWidget {
  const FoodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,
        // primaryColor: Colors.red,
        brightness: Brightness.light,
        fontFamily: GoogleFonts.poppins().fontFamily,
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      home: const HomeScreen(),
    );
  }
}
