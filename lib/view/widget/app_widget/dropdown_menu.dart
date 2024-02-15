import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/extension/string_casing.dart';
import '../../../core/utils/border.dart';
import '../../../data/model/gender_model/gender_model.dart';

class AppDropdownMenu extends StatelessWidget {
  final String hint;
  final List<DropDownModel> listModel;
  final void Function(String?)? onSelected;

  const AppDropdownMenu(
      {super.key,
      required this.hint,
      required this.listModel,
      this.onSelected});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      hintText: hint.tr.toTitleCase,
      expandedInsets: EdgeInsets.zero,
      menuStyle:
          const MenuStyle(elevation: MaterialStatePropertyAll<double>(20)),
      inputDecorationTheme: InputDecorationTheme(
          border: AppWidgetBorder.border,
          enabledBorder: AppWidgetBorder.enabledBorder,
          disabledBorder: AppWidgetBorder.disabledBorder,
          focusedBorder: AppWidgetBorder.focusedBorder),
      dropdownMenuEntries: listModel
          .map(
            (e) => DropdownMenuEntry(
              value: e.value,
              label: e.name.tr.toTitleCase,
              trailingIcon:
                  e.descreption != null ? Text(e.descreption!.tr) : null,
            ),
          )
          .toList(),
      onSelected: onSelected,
    );
  }
}
