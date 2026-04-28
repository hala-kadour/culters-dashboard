import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_dashbaord/config/router/app_router.dart';
import 'package:ecommerce_dashbaord/config/theme/app_dark_theme.dart';
import 'package:ecommerce_dashbaord/config/theme/app_light_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) {
          return const MyApp();
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce Dashboard',
      key: ValueKey(context.locale.languageCode),
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      builder: DevicePreview.appBuilder,
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      routerConfig: AppRouter.router,
    );
  }
}
