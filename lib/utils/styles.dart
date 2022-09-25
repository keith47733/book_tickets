import 'package:flutter/material.dart';

class Styles {
  static Color bgColor = Colors.white;
  static Color primaryColor = Colors.blue;
  static Color secondaryColor = Colors.blueGrey;
  static Color accentColor = Colors.orangeAccent;
  static Color inactiveColor = Colors.grey.shade700;
  static Color topTicketColor = primaryColor;
  static Color bottomTicketColor = accentColor;
  static Color hotelColor = secondaryColor;
  static Color textColor1 = Colors.black;
  static Color textColor2 = Colors.blueGrey;
  static Color textColor3 = Colors.grey;
  static Color textColor4 = Colors.white;

  static double defaultPadding = 14;
  static double defaultRadius = 14;

  static TextStyle textDefault = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: textColor2,
  );

  static TextStyle headline1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: textColor2,
  );

  static TextStyle headline2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: textColor2,
  );

  static TextStyle headline3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: textColor4,
  );

  static TextStyle headline4 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor4,
  );
}
