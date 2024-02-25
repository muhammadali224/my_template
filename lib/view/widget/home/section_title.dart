import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/text_style.dart';
import '../app_widget/body_container.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return BodyContainer(
      child: AutoSizeText(
        title.tr,
        style: AppTextStyle.headerPrimary,
      ),
    );
  }
}
