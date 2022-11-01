import "package:flutter/material.dart";

Color Primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = Primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketColor1 = Color.fromARGB(255, 255, 102, 0);
  static Color ticketColor2 = Color.fromARGB(255, 255, 213, 0);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headline1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headline2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headline3 =
      TextStyle(fontSize: 17, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headline4 =
      TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
      
}
