import 'package:flutter/material.dart';

import 'color.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle headerPrimary = TextStyle(
      fontSize: 28, fontWeight: FontWeight.bold, color: AppColor.primaryColor);
  static TextStyle headerAppBaPrimary =
      TextStyle(fontSize: 26, color: AppColor.primaryColor);
  static TextStyle headerX2Primary = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: AppColor.primaryColor);
  static TextStyle descreptionPrimary =
      TextStyle(fontSize: 18, color: AppColor.primaryColor);
}
