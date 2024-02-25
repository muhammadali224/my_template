import 'package:flutter/material.dart';

import 'color.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle headerPrimary = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColor.primaryColor,
  );
  static TextStyle title = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headerAppBaPrimary = const TextStyle(
    fontSize: 26,
    color: AppColor.primaryColor,
  );
  static TextStyle headerX2Primary = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColor.primaryColor,
  );
  static TextStyle descreptionPrimary = const TextStyle(
    fontSize: 18,
    color: AppColor.primaryColor,
  );
}
