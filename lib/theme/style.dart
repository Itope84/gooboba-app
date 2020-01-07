import 'package:flutter/material.dart';
import 'package:gooboba_mobile/utils/color.dart';

TextStyle textStyle =
    const TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);

final Color primaryColorDark = HexColor("070e46");
final Color primaryColor = HexColor("#09125D");
final Color lightPrimaryBg = HexColor('E8EAFF');

ThemeData appTheme = new ThemeData(
  primaryColor: primaryColor,
  primaryColorDark: primaryColorDark,
  fontFamily: "Ubuntu",
  primarySwatch: MaterialColor(
    HexColor.getColorFromHex("#09125D"),
    primarySwatch,
  ),
  // canvasColor: Colors.transparent,
);

Map<int, Color> primarySwatch = {
  50: Color.fromRGBO(9, 18, 93, .1),
  100: Color.fromRGBO(9, 18, 93, .2),
  200: Color.fromRGBO(9, 18, 93, .3),
  300: Color.fromRGBO(9, 18, 93, .4),
  400: Color.fromRGBO(9, 18, 93, .5),
  500: Color.fromRGBO(9, 18, 93, .6),
  600: Color.fromRGBO(9, 18, 93, .7),
  700: Color.fromRGBO(9, 18, 93, .8),
  800: Color.fromRGBO(9, 18, 93, .9),
  900: Color.fromRGBO(9, 18, 93, 1),
};

TextStyle buttonTextStyle = const TextStyle(
    color: const Color.fromRGBO(255, 255, 255, 0.8),
    fontSize: 14.0,
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold);
