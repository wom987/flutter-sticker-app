import 'package:flutter/material.dart';
//?colors constants
const colorBlack  = Color.fromRGBO(48, 47, 48, 1.0);
const colorGrey=Color.fromRGBO(141, 141, 141, 1.0);
const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
const colorDarkBlue = Color.fromRGBO(20, 25, 45, 1.0);
//?default text theme
const TextTheme textThemeDefault = TextTheme(
  headline1: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 26),
  headline2: TextStyle(color: colorWhite,fontWeight: FontWeight.w700,fontSize: 26),
  headline3: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 20),
  headline4: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 16),
  headline5: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 14),
  headline6: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 12),
  bodyText1: TextStyle(color: colorBlack,fontWeight: FontWeight.w500,fontSize: 14,height: 1.5),
  bodyText2: TextStyle(color: colorGrey,fontWeight: FontWeight.w500,fontSize: 22,height: 1.5),
  subtitle1: TextStyle(color: colorGrey,fontWeight: FontWeight.w400,fontSize: 12),
);
//?small text theme
const TextTheme textThemeSmall = TextTheme(
  headline1: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 26),
  headline2: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 22),
  headline3: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 20),
  headline4: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 16),
  headline5: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 14),
  headline6: TextStyle(color: colorBlack,fontWeight: FontWeight.w700,fontSize: 12),
  bodyText1: TextStyle(color: colorBlack,fontWeight: FontWeight.w500,fontSize: 14,height: 1.5),
  bodyText2: TextStyle(color: colorGrey,fontWeight: FontWeight.w500,fontSize: 14,height: 1.5),
  subtitle1: TextStyle(color: colorGrey,fontWeight: FontWeight.w400,fontSize: 12),
);