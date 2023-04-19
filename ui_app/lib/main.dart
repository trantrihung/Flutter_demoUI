import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/foody_app/foody_app.dart';
import 'package:ui_app/foody_app/utils/theme.dart';
import 'package:ui_app/pet_app/pet_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const FoodyApp(),
    );
  }
}
