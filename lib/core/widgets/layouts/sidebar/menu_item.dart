import 'package:ecommerce_dashbaord/config/scales/app_scales.dart';
import 'package:flutter/material.dart';

import '../../../../config/scales/gap.dart';
import '../../../../config/theme/app_colors.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.icon,
    required this.itemName,
    required this.pageNum,
    required this.currentPage,
    required this.onTap,
  });

  final IconData icon;
  final String itemName;
  final int pageNum;
  final int currentPage;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(pageNum);
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: (pageNum == currentPage)
              ? AppColors.ceruleanBlue100
              : Colors.transparent,
          borderRadius: BorderRadius.circular(AppScales.borderRadiusMd),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 24.0,
              color: (pageNum == currentPage)
                  ? Theme.of(context).colorScheme.onSurface
                  : Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            Gap.w8,
            Text(
              itemName,
              style: (pageNum == currentPage)
                  ? Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: .bold,
                    )
                  : Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
