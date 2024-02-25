import 'package:flutter/material.dart';

abstract class AppColor {
  AppColor._();

  static const Color red = Colors.red;
  static Color red200 = Colors.red.shade200;
  static Color red600 = Colors.red.shade600;
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static const Color black = Colors.black;

  static const Color primaryColor = Color(0xff39559F);
  static const Color primaryColor200 = Color(0xff6a80b9);
  static const Color primaryColor600 = Color(0xff8495be);
  static const Color secondColor = Colors.cyan;
  static const Color theirdColor = Colors.teal;
  static const Color lightBackgroundColor = Color(0xffffffff);
  static const Color darkBackgroundColor = Color(0xff000000);
}
