import 'package:flutter/material.dart';

import '../../../core/utils/color.dart';

class CircularProfile extends StatelessWidget {
  const CircularProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            border: Border.all(width: 1, color: AppColor.primaryColor200)),
        child: Container(
          height: 170,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppColor.primaryColor,
                  Colors.blueGrey,
                ]),
          ),
          child: const Center(
            child: Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
