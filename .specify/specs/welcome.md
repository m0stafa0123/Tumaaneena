# Feature: Welcome

## Screen: WelcomeScreen

### UI
- Scaffold with emerald background #1B4332 + center radial glow
- Top: small gold logo (crescent + ط), centered
- Center: بسم الله الرحمن الرحيم in large gold Arabic calligraphy
         soft golden glow behind it
- App name طمأنينة below in Cairo Bold warm white
- Tagline: رحلة هادئة للتقرب من الله in muted cream small
- Bottom section (buttons stacked):
  - إنشاء حساب: full width, gold background #D4A843, dark text, rounded 16px
  - تسجيل الدخول: full width, outlined gold border, warm white text, rounded 16px
  - متابعة كضيف: text link, muted cream, center

### Logic (Phase 2)
- إنشاء حساب → Get.to SignUpView
- تسجيل الدخول → Get.to LoginView
- متابعة كضيف → Get.offAll MainNavigation with guest flag saved

### Files
- lib/features/welcome/presentation/views/welcome_view.dart
- lib/features/welcome/presentation/views/widgets/welcome_body.dart
- lib/features/welcome/presentation/views/widgets/welcome_buttons.dart
- lib/features/welcome/presentation/views/widgets/basmala_widget.dart
