import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/utils/service_locator.dart';

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

      // // ── RTL enforced at app level ───────────────────────────────────────
      // builder: (context, child) {
      //   return Directionality(
      //     textDirection: context.locale == const Locale('ar')
      //         ? TextDirection.rtl
      //         : TextDirection.ltr,
      //     child: child!,
      //   );
      // },

      // ── Theme ────────────────────────────────────────────────────────────
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: const Color(0xFF1B4332),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFD4A843),
          surface: Color(0xFF163829),
          error: Color(0xFFE57373),
        ),
        useMaterial3: true,
      ),

      // ── Entry point (replaced by SplashView in TASK-002) ─────────────────
      home: const _PlaceholderHome(),
    );
  }
}

/// Temporary placeholder — replaced when SplashView is created in TASK-002.
class _PlaceholderHome extends StatelessWidget {
  const _PlaceholderHome();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'طمأنينة',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 32,
            fontWeight: FontWeight.w800,
            color: Color(0xFFF5F0E8),
          ),
        ),
      ),
    );
  }
}
