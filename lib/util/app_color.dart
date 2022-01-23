import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static ThemeData light() => ThemeData.light().copyWith(
        textTheme: TextTheme(
          subtitle1: TextStyle(color: textColorLight),
          bodyText2: TextStyle(color: textColorLight),
        ),
      );

  static ThemeData dark() => ThemeData.dark().copyWith(
        textTheme: const TextTheme(bodyText2: TextStyle(color: textColorBlack)),
      );

  static bool _isLight(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light;

  static final Color textColorLight = Colors.grey.shade600;
  static const Color textColorBlack = Colors.white;
}
