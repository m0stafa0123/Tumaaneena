# Plan: Welcome Screen

## Overview
Build the Welcome screen UI only.
No navigation logic yet. No cubit logic yet.
Static UI. Phase 1 — UI only.

---

## Step 1 — WelcomeView

### Goal
Scaffold wrapper only. Provides BlocProvider for WelcomeCubit.

### File
lib/features/welcome/presentation/views/welcome_view.dart

---

## Step 2 — WelcomeBody

### Goal
Full UI implementation of the welcome screen.

### Layout (top to bottom, centered column)
- Background: emerald #1B4332 full screen
- Radial gradient glow center: #2D6A4F behind logo area
- Subtle Islamic geometric star pattern overlay very low opacity

- TOP SECTION:
  - Small gold logo image (crescent + ط) centered
  - Soft golden glow effect behind logo

- MIDDLE SECTION:
  - بسم الله الرحمن الرحيم
    Cairo Bold, gold #D4A843, large, centered
    Soft golden glow behind this text
  - App name طمأنينة
    Cairo Bold, warm white #F5F0E8, very large, centered
  - Tagline: رحلة هادئة للتقرب من الله
    Cairo Regular, muted cream #A89880, small, centered

- BOTTOM SECTION (buttons stacked with gap between):
  - Button 1: إنشاء حساب
    Full width, gold background #D4A843,
    dark text #163829, Cairo Bold,
    rounded 16px, height 56px

  - Button 2: تسجيل الدخول
    Full width, transparent background,
    gold border #D4A843 width 1.5px,
    warm white text #F5F0E8, Cairo Bold,
    rounded 16px, height 56px

  - Text link: متابعة كضيف
    Cairo Regular, muted cream #A89880,
    centered, underline decoration,
    small font size

### File
lib/features/welcome/presentation/views/widgets/welcome_body.dart

---

## Step 3 — Shared Widgets

### BasmalaWidget
- Standalone widget for بسم الله الرحمن الرحيم text
- Gold color, Cairo Bold, large
- Soft golden Container glow behind it using BoxDecoration
- Reusable across app

### File
lib/features/welcome/presentation/views/widgets/basmala_widget.dart

### WelcomeButtonsSection
- Contains the 3 interactive elements:
  إنشاء حساب button
  تسجيل الدخول button
  متابعة كضيف text link
- Buttons are UI only, onTap callbacks are empty for now
- Extracted as separate widget to keep body clean

### File
lib/features/welcome/presentation/views/widgets/welcome_buttons_section.dart

---

## Step 4 — Cubit Placeholder (empty, no logic yet)

### WelcomeCubit
- State: WelcomeInitial only
- No methods yet

### Files
lib/features/welcome/presentation/views_model/cubit/welcome_cubit.dart
lib/features/welcome/presentation/views_model/cubit/welcome_state.dart

---

## UI Rules
- Background: #1B4332
- Surface/Cards: #163829
- Gold accent: #D4A843
- Text primary: #F5F0E8
- Text secondary: #A89880
- Font: Cairo throughout
- Border radius: 16px
- All strings via easy_localization
- RTL enforced
- No hardcoded strings
- No navigation logic yet

---

## Localization Keys Needed
Add to ar.json and en.json:

welcome.basmala → بسم الله الرحمن الرحيم / In the name of Allah
welcome.app_name → طمأنينة / Tumaaneena
welcome.tagline → رحلة هادئة للتقرب من الله / A peaceful journey closer to Allah
welcome.sign_up → إنشاء حساب / Sign Up
welcome.login → تسجيل الدخول / Login
welcome.guest → متابعة كضيف / Continue as Guest

---

## Files To Create
lib/features/welcome/presentation/views/welcome_view.dart
lib/features/welcome/presentation/views/widgets/welcome_body.dart
lib/features/welcome/presentation/views/widgets/basmala_widget.dart
lib/features/welcome/presentation/views/widgets/welcome_buttons_section.dart
lib/features/welcome/presentation/views_model/cubit/welcome_cubit.dart
lib/features/welcome/presentation/views_model/cubit/welcome_state.dart
