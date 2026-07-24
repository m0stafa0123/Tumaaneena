import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/constants/app_colors.dart';
import 'core/utils/service_locator.dart';
import 'features/splash/presentation/views/splash_view.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ── Localization ───────────────────────────────────────────────────────────
  await EasyLocalization.ensureInitialized();

  // ── DI ────────────────────────────────────────────────────────────────────
  await setupServiceLocator();

  // ── Orientation ───────────────────────────────────────────────────────────
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('ar'),
      child: const TumaaneenaApp(),
    ),
  );
}

class TumaaneenaApp extends StatelessWidget {
  const TumaaneenaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'طمأنينة',
      debugShowCheckedModeBanner: false,

      // ── Localization ────────────────────────────────────────────────────
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      // ── Theme ────────────────────────────────────────────────────────────
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: AppColors.backgroundColor,
        colorScheme: ColorScheme.dark(
          primary: AppColors.primaryAccent,
          surface: AppColors.surfaceColor,
          error: AppColors.errorColor,
        ),
        useMaterial3: true,
      ),

      // ── Entry point ───────────────────────────────────────────────────────
      home: const SplashView(),
    );
  }
}
