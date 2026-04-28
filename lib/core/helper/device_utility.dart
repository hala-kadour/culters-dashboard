import 'package:ecommerce_dashbaord/config/scales/app_scales.dart';
import 'package:flutter/material.dart';

class DeviceUtility {
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= AppScales.desktopScreenSize;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= AppScales.tabletScreenSize &&
        MediaQuery.of(context).size.width < AppScales.desktopScreenSize;
  }

  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < AppScales.tabletScreenSize;
  }
}
