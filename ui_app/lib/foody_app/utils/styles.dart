import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kColorPrimary = Color(0xFF00bf45);
const kColorGrey = Color(0xFFe2e2e2);
var kColorGreyTitle = Colors.grey[600];
const kBackgroundTextFormField = Color(0xFFf5f5f6);
const kHeading1 = Color(0xFF0F1641);
const double kPaddingPrimary = 24;
const accent = Color(0xFF00bf45);
const accentLight = Color.fromARGB(255, 90, 255, 151);
const heading = Color(0xFF0F1641);
const text = Color(0xFFAAAAAA);
const icon = Color(0xFFB8BCCB);
const background = Color(0xFFF8FAFB);
const white = Color(0xFFFFFFFF);
const black = Color(0xFF000000);

// TextStyle
TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 20, fontWeight: FontWeight.w600, color: kHeading1);
TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.w600, color: kHeading1);
TextStyle heading3 = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w600, color: kHeading1);
TextStyle heading4 = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w600, color: kHeading1);

TextStyle pBold =
    GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700, color: text);
TextStyle p1 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: text);
TextStyle p2 =
    GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: text);
TextStyle p3 =
    GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, color: text);

// Gap
var medium = 30.0;
var small = 16.0;
var xsmall = 10.0;

Map<int, Color> color = const {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};
MaterialColor colorCustom = MaterialColor(0xFF00bf45, color);
