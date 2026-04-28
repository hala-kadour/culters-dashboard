import 'dart:ui';

class BreadcrumbItem {
  final String title;
  final VoidCallback? onTap;

  BreadcrumbItem({required this.title, this.onTap});
}
