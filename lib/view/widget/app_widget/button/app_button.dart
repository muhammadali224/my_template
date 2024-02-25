import 'package:flutter/material.dart';

import '../../../../core/extension/space_extension.dart';
import '../../../../core/utils/border_radius.dart';
import '../../../../core/utils/color.dart';
import 'button_constant.dart';

class AppButton extends StatelessWidget {
  final int height;
  final Color? color;
  final Widget Function(BuildContext context, bool isFocused, bool isHovered)
      builder;
  final void Function()? onPressed;

  final EdgeInsetsGeometry? contentPadding;

  final bool isDestructive;

  const AppButton(
      {super.key,
      required this.height,
      required this.builder,
      this.onPressed,
      this.contentPadding,
      required this.isDestructive,
      this.color});

  factory AppButton.text({
    required String text,
    int height = AppButtonHeights.md,
    void Function()? onPressed,
    Color? color,
    bool isDestructive = false,
    Key? key,
  }) {
    return AppButton(
      key: key,
      color: color,
      height: height,
      onPressed: onPressed,
      isDestructive: isDestructive,
      builder: (_, __, ___) => Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.white,
          fontSize: AppButtonTextFontSize.fromButtonHeights(height),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  factory AppButton.icon({
    required String text,
    required IconData? leadingIconAssetName,
    required IconData? trailingIconAssetName,
    int height = AppButtonHeights.md,
    void Function()? onPressed,
    Color? color,
    bool isDestructive = false,
    Key? key,
  }) {
    return AppButton(
      key: key,
      color: color,
      height: height,
      onPressed: onPressed,
      isDestructive: isDestructive,
      builder: (_, __, ___) => Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leadingIconAssetName != null
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      leadingIconAssetName,
                      color: AppColor.white,
                      size: AppButtonIconSize.fromButtonHeights(height),
                    ),
                    const SizedBox(width: 8.0),
                  ],
                )
              : Container(),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.white,
              fontSize: AppButtonTextFontSize.fromButtonHeights(height),
              fontWeight: FontWeight.w400,
            ),
          ),
          trailingIconAssetName != null
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    8.gap,
                    Icon(
                      trailingIconAssetName,
                      color: AppColor.white,
                      size: AppButtonIconSize.fromButtonHeights(height),
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }

  /// Creates [AppButton] with only an icon as content.
  factory AppButton.iconOnly({
    required IconData iconAssetName,
    int height = AppButtonHeights.md,
    void Function()? onPressed,
    bool isDestructive = false,
    Color? color,
    Key? key,
  }) {
    return AppButton(
      key: key,
      height: height,
      onPressed: onPressed,
      color: color,
      isDestructive: isDestructive,
      contentPadding: AppButtonIconOnlyPadding.fromButtonHeights(height),
      builder: (_, __, ___) => Icon(
        iconAssetName,
        color: AppColor.white,
        size: AppButtonIconSize.fromButtonHeights(height),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    late Color primaryColor;
    late Color disabledColor;
    late Color hoverColor;
    late Color focusColor;
    if (!isDestructive) {
      primaryColor = color ?? AppColor.primaryColor;
      disabledColor = AppColor.primaryColor200;
      hoverColor = AppColor.primaryColor600;
      focusColor = AppColor.primaryColor;
    } else {
      primaryColor = color ?? AppColor.primaryColor;
      disabledColor = AppColor.red200;
      hoverColor = AppColor.red600;
      focusColor = AppColor.primaryColor;
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppBorderRadius.sm8),
      ),
      child: Material(
        color: onPressed != null ? primaryColor : disabledColor,
        borderRadius: BorderRadius.circular(
          AppBorderRadius.sm8,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(
            AppBorderRadius.sm8,
          ),
          hoverColor: hoverColor,
          focusColor: focusColor,
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppBorderRadius.sm8,
              ),
            ),
            child: Padding(
              padding:
                  contentPadding ?? AppButtonPadding.fromButtonHeights(height),
              child: builder(context, true, true),
            ),
          ),
        ),
      ),
    );
  }
}
