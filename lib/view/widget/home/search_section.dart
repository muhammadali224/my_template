import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../core/constant/app_strings.dart';
import '../../../core/extension/space_extension.dart';
import '../../../core/utils/color.dart';
import '../app_widget/text_input_field.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(hintText: AppStrings.search.tr),
        ),
        5.gap,
        const Icon(
          HeroIcons.qr_code,
          size: 50,
          color: AppColor.theirdColor,
        ),
      ],
    );
  }
}
