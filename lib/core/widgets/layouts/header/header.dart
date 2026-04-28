import 'package:ecommerce_dashbaord/config/scales/app_scales.dart';
import 'package:ecommerce_dashbaord/config/theme/app_icons.dart';
import 'package:flutter/material.dart';

import '../../../helper/device_utility.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    bool isDesktop = DeviceUtility.isDesktopScreen(context);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        border: Border(
          bottom: BorderSide(color: Theme.of(context).dividerColor, width: 1),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppScales.md,
        vertical: AppScales.sm,
      ),
      child: AppBar(
        scrolledUnderElevation: 0.0,
        // Mobile Menu
        leading: !isDesktop
            ? IconButton(
                onPressed: () {
                  scaffoldKey?.currentState!.openDrawer();
                },
                icon: const Icon(AppIcons.menu),
              )
            : null,
        // Search Field
        // Actions
        actions: [],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
