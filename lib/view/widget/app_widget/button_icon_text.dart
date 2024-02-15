import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/color.dart';

class ButtonIconText extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Widget? leading;

  const ButtonIconText(
      {super.key, required this.text, required this.onPressed, this.leading});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: ElevarmButtonHeights.md,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(
          ElevarmBorderRadius.sm,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(
            ElevarmBorderRadius.sm,
          ),
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
                color: const ElevarmSecondaryButtonThemeData().primaryColor,
                borderRadius: BorderRadius.circular(
                  ElevarmBorderRadius.sm,
                )),
            child: Padding(
              padding: ElevarmButtonPadding.fromButtonHeights(
                  ElevarmButtonHeights.md),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  leading ?? Container(),
                  Text(
                    text.tr,
                    textAlign: TextAlign.center,
                    style: ElevarmFontFamilies.inter(
                      color: AppColor.primaryColor,
                      fontSize: ElevarmButtonTextFontSize.fromButtonHeights(
                          ElevarmButtonHeights.md),
                      fontWeight: ElevarmFontWeights.semibold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
