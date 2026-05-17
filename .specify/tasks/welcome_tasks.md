# Tasks: Welcome Screen

## TASK-001 — WelcomeView
- [ ] Create lib/features/welcome/presentation/views/welcome_view.dart
      Scaffold wrapper, BlocProvider for WelcomeCubit

## TASK-002 — WelcomeBody
- [ ] Create lib/features/welcome/presentation/views/widgets/welcome_body.dart
      Full layout:
      - Background Container #1B4332 full screen
      - Radial gradient glow #2D6A4F center
      - Centered Column with 3 sections:
        TOP: logo placeholder gold Container 60x60 rounded + glow
        MIDDLE: BasmalaWidget + app name + tagline
        BOTTOM: WelcomeButtonsSection

## TASK-003 — BasmalaWidget
- [ ] Create lib/features/welcome/presentation/views/widgets/basmala_widget.dart
      - Text بسم الله الرحمن الرحيم
      - Cairo Bold gold #D4A843 size 22 centered
      - Wrapped in Container with gold glow BoxShadow

## TASK-004 — WelcomeButtonsSection
- [ ] Create lib/features/welcome/presentation/views/widgets/welcome_buttons_section.dart
      - Button 1: إنشاء حساب
        ElevatedButton full width height 56
        gold background #D4A843 dark text #163829
        rounded 16px Cairo Bold
        onTap empty for now
      - Gap 12
      - Button 2: تسجيل الدخول
        OutlinedButton full width height 56
        gold border #D4A843 warm white text
        rounded 16px Cairo Bold
        onTap empty for now
      - Gap 8
      - TextButton: متابعة كضيف
        muted cream #A89880 underline
        centered onTap empty for now

## TASK-005 — Cubit Placeholder
- [ ] Create lib/features/welcome/presentation/views_model/cubit/welcome_cubit.dart
- [ ] Create lib/features/welcome/presentation/views_model/cubit/welcome_state.dart
      WelcomeInitial state only

## TASK-006 — Translation Keys
- [ ] Add to ar.json + en.json:
      welcome.basmala → بسم الله الرحمن الرحيم / In the name of Allah
      welcome.app_name → طمأنينة / Tumaaneena
      welcome.tagline → رحلة هادئة للتقرب من الله / A peaceful journey closer to Allah
      welcome.sign_up → إنشاء حساب / Sign Up
      welcome.login → تسجيل الدخول / Login
      welcome.guest → متابعة كضيف / Continue as Guest
