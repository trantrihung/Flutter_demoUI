import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/foody_app/foody_app.dart';
import 'package:ui_app/foody_app/utils/styles.dart';
import 'package:ui_app/pet_app/pet_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodyApp(),
    );
  }
}
