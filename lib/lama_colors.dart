import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LamaColors {
  static Color yellow = const Color.fromARGB(255, 254, 192, 64);
  static Color purple = const Color.fromARGB(255, 140, 127, 249);
  static Color lightPurple = const Color.fromARGB(255, 187, 180, 252);
  static Color slightlyLighterPurple = const Color.fromARGB(255, 225, 220, 255);
  static Color blue = const Color.fromARGB(255, 64, 187, 234);
  static Color lightGrey = const Color.fromARGB(
    255,
    208,
    208,
    208,
  );
  static Color grey = const Color.fromARGB(255, 118, 118, 118);

  static Color primaryText = const Color.fromARGB(255, 118, 118, 118);
  static Color subText = const Color.fromARGB(255, 77, 77, 77);
  static Color secondaryText = const Color.fromARGB(255, 189, 189, 189);
  static Color shadowColor = const Color.fromRGBO(155, 155, 155, 1);
  static Color faintPurple = const Color.fromARGB(255, 246, 245, 255);

  //////status colors
  static Color pendingYellow = const Color.fromRGBO(255, 239, 205, 1);
  static Color pendingYellowText = const Color.fromRGBO(214, 152, 25, 1);

  static Color completeGreen = const Color.fromRGBO(208, 255, 196, 1);
  static Color completeGreenText = const Color.fromRGBO(92, 191, 67, 1);

  static Color notgoodRed = const Color.fromRGBO(255, 222, 215, 1);
  static Color notgoodRedText = const Color.fromRGBO(198, 82, 57, 1);

  static Color hardBlue = const Color.fromRGBO(210, 220, 255, 1);
  static Color hardBlueText = const Color.fromRGBO(25, 65, 205, 1);

  static Color cloudBlue = const Color.fromRGBO(222, 245, 255, 1);
  static Color cloudBlueText = const Color.fromRGBO(86, 171, 207, 1);

  static MaterialColor toMaterialColor(Color rawcolor) {
    Map<int, Color> color = {
      50: rawcolor.withOpacity(.1),
      100: rawcolor.withOpacity(.2),
      200: rawcolor.withOpacity(.3),
      300: rawcolor.withOpacity(.4),
      400: rawcolor.withOpacity(.5),
      500: rawcolor.withOpacity(.6),
      600: rawcolor.withOpacity(.7),
      700: rawcolor.withOpacity(.8),
      800: rawcolor.withOpacity(.9),
      900: rawcolor.withOpacity(1),
    };
    MaterialColor colorCustom = MaterialColor(rawcolor.value, color);
    return colorCustom;
  }
}
