// text style
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vascommtest/shared/themes.dart';

final TextStyle kHeading5 =
    GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400);
final TextStyle kHeading6 = GoogleFonts.poppins(
    fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15);
final TextStyle kSubtitle = GoogleFonts.poppins(
    fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15);

final TextStyle kBodyText = GoogleFonts.poppins(
    fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.25);
const TextStyle kTextTitleLight = TextStyle(
  fontFamily: 'Gliroy',
  fontSize: 28.0,
  fontWeight: FontWeight.w500,
  color: kOxfordBluePrimary,
);
const TextStyle kTextTitleBig = TextStyle(
  fontFamily: 'Gliroy',
  fontSize: 28.0,
  fontWeight: FontWeight.w800,
  color: kOxfordBluePrimary,
);

const TextStyle kTextTitleLabel = TextStyle(
  fontFamily: 'Gliroy',
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
  color: kOxfordBluePrimary,
);


TextStyle kTextTitleLightSmall(Color colors, double? fSize) {
  return TextStyle(
    fontFamily: 'Proxima',
    fontSize: fSize ?? 12.0,
    fontWeight: FontWeight.w600,
    color: colors,
  );
}

const TextStyle kToolbarHeader =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);
// text theme
final kTextTheme = TextTheme(
  headlineSmall: kHeading5, //headline5
  titleLarge: kHeading6, //headline6
  titleMedium: kSubtitle, //subtitle1
  bodyMedium: kBodyText, //bodyText2
);
