import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/layouts/templates/custom_site_template.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.shell});
  final StatefulNavigationShell shell;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return CustomSiteTemplate(
      currentPageIndex: widget.shell.currentIndex,
      onItemSelected: (index) {
        widget.shell.goBranch(index);
      },
      desktop: widget.shell,
    );
  }
}
