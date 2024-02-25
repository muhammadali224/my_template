import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../controller/app_drawer_controller/app_drawer_controller.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/utils/color.dart';
import '../../widget/app_drawer/drawer_tile.dart';

class AppDrawer extends StatelessWidget {
  final Widget child;
  final String? title;

  const AppDrawer({super.key, required this.child, this.title});

  @override
  Widget build(BuildContext context) {
    AppDrawerController controller = Get.put(AppDrawerController());
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColor.primaryColor,
              AppColor.secondColor.withOpacity(0.4)
            ],
          ),
        ),
      ),
      controller: controller.advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animateChildDecoration: true,
      rtlOpening: controller.isRTL.value,
      openScale: 0.9,
      openRatio: 0.6,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: ListTileTheme(
          textColor: AppColor.white,
          iconColor: AppColor.white,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: !controller.isRTL.value ? null : 0,
                right: controller.isRTL.value ? null : 0,
                child: DayNightSwitcherIcon(
                  isDarkModeEnabled: Get.isDarkMode,
                  onStateChanged: (bool isDarkModeEnabled) {
                    controller.changeTheme();
                  },
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 128.0,
                    height: 128.0,
                    margin: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 64.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      HeroIcons.user,
                      size: 70,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  DrawerTile(
                    onTap: controller.goToHome,
                    iconLeading: HeroIcons.home,
                    title: AppStrings.home,
                  ),
                  DrawerTile(
                    onTap: controller.toggleLanguages,
                    iconLeading: HeroIcons.language,
                    title: AppStrings.language,
                    subTitle: controller.languageName,
                  ),
                  DrawerTile(
                    onTap: () {},
                    iconLeading: HeroIcons.user_circle,
                    title: AppStrings.profile,
                  ),
                  DrawerTile(
                    onTap: () {},
                    iconLeading: HeroIcons.heart,
                    title: AppStrings.favorite,
                  ),
                  DrawerTile(
                    onTap: () {},
                    iconLeading: HeroIcons.cog_6_tooth,
                    title: AppStrings.setting,
                  ),
                  const Spacer(),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                      child: const Text('Terms of Service | Privacy Policy'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: title == null
              ? null
              : Text(
                  title!.tr,
                  style: const TextStyle(color: AppColor.secondColor),
                ),
          leading: IconButton(
            onPressed: controller.handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: controller.advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible
                        ? EvaIcons.close_outline
                        : controller.isRTL.value
                            ? HeroIcons.bars_3_bottom_right
                            : HeroIcons.bars_3_bottom_left,
                    color: Colors.teal,
                    size: value.visible ? 40 : 30,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        body: child,
      ),
    );
  }
}
