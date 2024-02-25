import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/text_style.dart';

class DrawerTile extends StatelessWidget {
  final void Function() onTap;
  final IconData iconLeading;
  final String title;
  final String? subTitle;
  final Widget? trailing;

  const DrawerTile(
      {super.key,
      required this.onTap,
      required this.iconLeading,
      required this.title,
      this.subTitle,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(iconLeading),
      trailing: trailing,
      title: Text(
        title.tr,
        style: AppTextStyle.title,
      ),
      subtitle: subTitle == null ? null : Text(subTitle!.tr),
    );
  }
}
