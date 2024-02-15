import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    String message,
    {Color? color,
    Widget? widget}) {
  return ScaffoldMessenger.of(Get.context!).showSnackBar(
    SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(message),
          widget ?? Container(),
        ],
      ),
      elevation: 10,
      backgroundColor: color,
    ),
  );
}
