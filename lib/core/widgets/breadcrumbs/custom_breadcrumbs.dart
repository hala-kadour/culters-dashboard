import 'package:flutter/material.dart';
import '../../helper/device_utility.dart';
import 'breadcrumb_item.dart';

class CustomBreadcrumbs extends StatelessWidget {
  final List<BreadcrumbItem> items;

  const CustomBreadcrumbs({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    bool isMobile = DeviceUtility.isMobileScreen(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: List.generate(items.length, (index) {
          final bool isLast = index == items.length - 1;

          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // نص المسار
              InkWell(
                onTap: items[index].onTap,
                child: Text(
                  items[index].title,
                  style: isLast
                      ? Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: .bold,
                          color: Theme.of(context).primaryColor,
                        )
                      : Theme.of(context).textTheme.labelMedium,
                ),
              ),
              if (!isLast)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(
                    Icons.arrow_right,
                    size: isMobile ? 10.0 : 14.0,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }
}
