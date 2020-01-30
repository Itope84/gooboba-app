import 'package:flutter/material.dart';
import 'package:gooboba_mobile/utils/color.dart';

TextStyle textStyle =
    const TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);

// final Color primaryColorDark = HexColor("070e46");
final Color primaryColor = HexColor("#4A0068");
final Color accentGreen = HexColor('3D8962');

ThemeData appTheme = new ThemeData(
    primaryColor: primaryColor,
    // primaryColorDark: primaryColorDark,
    fontFamily: "Ubuntu",
    primarySwatch: MaterialColor(
      HexColor.getColorFromHex("#4A0068"),
      primarySwatch,
    ),
    accentColor: accentGreen,
    textTheme: TextTheme(
      body2: paragraphTextStyle.copyWith(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87),
    )

    // canvasColor: Colors.transparent,
    );

Map<int, Color> primarySwatch = {
  50: Color.fromRGBO(74, 0, 104, .1),
  100: Color.fromRGBO(74, 0, 104, .2),
  200: Color.fromRGBO(74, 0, 104, .3),
  300: Color.fromRGBO(74, 0, 104, .4),
  400: Color.fromRGBO(74, 0, 104, .5),
  500: Color.fromRGBO(74, 0, 104, .6),
  600: Color.fromRGBO(74, 0, 104, .7),
  700: Color.fromRGBO(74, 0, 104, .8),
  800: Color.fromRGBO(74, 0, 104, .9),
  900: Color.fromRGBO(74, 0, 104, 1),
};

// TextStyle buttonTextStyle = const TextStyle(
//     color: const Color.fromRGBO(255, 255, 255, 0.8),
//     fontSize: 14.0,
//     fontFamily: "Roboto",
//     fontWeight: FontWeight.bold);

TextStyle smallText = const TextStyle(
  fontSize: 12.0,
);

TextStyle smallBoldText = smallText.copyWith(fontWeight: FontWeight.bold);

TextStyle mainHeaderTextStyle =
    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

TextStyle whiteMainHeader = mainHeaderTextStyle.copyWith(color: Colors.white);

TextStyle header2TextStyle =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

TextStyle whiteHeader2TextStyle =
    header2TextStyle.copyWith(color: Colors.white);

TextStyle paragraphTextStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.black,
  fontWeight: FontWeight.w500,
  height: 1.5,
);

TextStyle boldParagraphTextStyle =
    paragraphTextStyle.copyWith(fontWeight: FontWeight.bold);

TextStyle mutedText = TextStyle(color: Colors.grey[400]);

TextStyle f18 = TextStyle(fontSize: 18.0);
TextStyle f18Bold = f18.copyWith(fontWeight: FontWeight.bold);
