import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tkmonkey_web/config/values/values.dart';

final commonThemeData = ThemeData(
  primaryColor: kPrimaryColor,
  primaryColorLight: kPrimaryColorLight,
  scaffoldBackgroundColor: kBackgroundColor,
  accentColor: kAccentColor,
  primaryColorBrightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(110, 40),
      onPrimary: kBlackColor,
      textStyle: GoogleFonts.notoSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
);

final headline1 = GoogleFonts.notoSans(
  color: kCreamColor,
  fontWeight: FontWeight.w800,
);

final headline2 = GoogleFonts.notoSans(
  color: kCreamColor,
  fontWeight: FontWeight.w500,
);

final headline3 = GoogleFonts.monda(
  color: kCreamColor,
  fontWeight: FontWeight.w300,
);

final headline4 = GoogleFonts.notoSans(
  color: kBlackColor,
  fontWeight: FontWeight.w600,
);

final headline5 = GoogleFonts.fugazOne(
  color: kGrayColorOpacity,
  fontWeight: FontWeight.w300,
);

final subtitle1 = GoogleFonts.notoSans(
  color: kBlackColor,
  fontWeight: FontWeight.w800,
);

final subtitle2 = GoogleFonts.delius(
  color: kGrayColor,
  fontWeight: FontWeight.w400,
);

//gugi
