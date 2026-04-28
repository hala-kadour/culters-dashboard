import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_dashbaord/config/scales/app_scales.dart';
import 'package:ecommerce_dashbaord/config/theme/app_icons.dart';
import 'package:flutter/material.dart';
import '../../../../config/scales/gap.dart';
import '../../../../translations/locale_keys.g.dart';
import 'menu_item.dart';

class CustomSidebar extends StatefulWidget {
  const CustomSidebar({
    super.key,
    required this.currentPageIndex,
    required this.onItemSelected,
  });

  final int currentPageIndex;
  final Function(int) onItemSelected;

  @override
  State<CustomSidebar> createState() => _CustomSidebarState();
}

class _CustomSidebarState extends State<CustomSidebar> {
  final List<Map<String, dynamic>> menuItems = [
    {"icon": AppIcons.home2, "label": LocaleKeys.sidebar_dashboard.tr()},
    {"icon": AppIcons.store, "label": LocaleKeys.sidebar_product.tr()},
    {"icon": AppIcons.file, "label": LocaleKeys.sidebar_transaction.tr()},
    {"icon": AppIcons.userGroup, "label": LocaleKeys.sidebar_customers.tr()},
    {"icon": AppIcons.lineChart, "label": LocaleKeys.sidebar_sales_report.tr()},
    {
      "icon": AppIcons.settings,
      "label": LocaleKeys.sidebar_account_settings.tr(),
    },
    {"icon": AppIcons.help, "label": LocaleKeys.sidebar_help.tr()},
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BorderDirectional(),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      child: Padding(
        padding: const EdgeInsets.all(AppScales.md),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          spacing: 8.0,
          children: [
            // Logo & Expand Icon
            // Company Info
            Gap.h24,
            Expanded(
              child: ListView.separated(
                itemCount: menuItems.length,
                itemBuilder: (context, index) => MenuItem(
                  icon: menuItems[index]["icon"],
                  itemName: menuItems[index]["label"],
                  pageNum: index,
                  currentPage: widget.currentPageIndex,
                  onTap: widget.onItemSelected,
                ),
                separatorBuilder: (context, index) => Gap.h10,
              ),
            ),
            Gap.h24,
          ],
        ),
      ),
    );
  }
}
