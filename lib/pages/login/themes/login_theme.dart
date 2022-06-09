import 'package:flutter/cupertino.dart';

class LoginTheme {
  LoginTheme._();

  static size(BuildContext context) => MediaQuery.of(context).size;

  static List<Color> lightBgColors(bool isFullSun) => [
        const Color(0xFF8C2480),
        const Color(0xFFCE587D),
        const Color(0xFFFF9485),
        if (isFullSun) const Color(0xFFFF9D80),
      ];

  static List<Color> darkBgColors = [
    const Color(0xFF0D1441),
    const Color(0xFF283584),
    const Color(0xFF376AB2),
  ];
}
