import 'package:ecommerce_dashbaord/config/scales/app_scales.dart';
import 'package:flutter/material.dart';

class CustomResponsiveDesign extends StatelessWidget {
  const CustomResponsiveDesign({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });
  // Widget for desktop layout
  final Widget desktop;

  // Widget for tablet layout
  final Widget tablet;

  // Widget for mobile layout
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          if (constraints.maxWidth >= AppScales.desktopScreenSize) {
            return desktop;
          } else if (constraints.maxWidth < AppScales.desktopScreenSize &&
              constraints.maxWidth >= AppScales.tabletScreenSize) {
            return tablet;
          } else {
            return mobile;
          }
        },
      ),
    );
  }
}
