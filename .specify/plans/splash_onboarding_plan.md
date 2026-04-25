# Plan: Splash & Onboarding

## Overview
Build the Splash screen and Onboarding flow UI only.
No logic, no API calls, no navigation logic yet.
Static dummy data only. Phase 1 — UI.

---

## Step 1 — Core Setup (do this once if not done)

- Add AppColors class in lib/core/constants/app_colors.dart
- Add AppTextStyles class in lib/core/constants/app_text_styles.dart
- Add AssetsData class in lib/core/utils/assets_data.dart
- Add placeholder translation files:
  assets/translations/ar.json
  assets/translations/en.json
- Setup easy_localization in main.dart
- Setup GetIt in lib/core/utils/service_locator.dart
- Add Cairo font to pubspec.yaml
- Add assets folders to pubspec.yaml

---

## Step 2 — Splash Screen

### Goal
Build SplashView with full UI — emerald background, radial glow,
logo, app name, tagline. Static only, no navigation timer yet.

### Components
- SplashView (scaffold wrapper)
- SplashBody (full UI implementation)
  - Emerald background container #1B4332
  - Radial gradient glow center #2D6A4F
  - Subtle geometric pattern overlay (low opacity)
  - Centered column:
    - Logo image placeholder (gold crescent + ط)
    - App name طمأنينة Cairo Bold warm white large
    - Tagline YOUR DAILY ISLAMIC COMPANION spaced caps muted cream tiny
    - EST. 1446 AH muted cream tiny bottom

---

## Step 3 — Onboarding Screen

### Goal
Build OnboardingView with full UI — 3 swipeable pages,
pagination dots, next/skip buttons. Static content only.

### Components
- OnboardingView (scaffold wrapper)
- OnboardingBody (PageView controller + layout)
- OnboardingPage (single page widget, reusable)
  - Emerald background + radial glow
  - Illustration image placeholder (Container with gold border)
  - Title Arabic bold warm white
  - Subtitle muted cream
- OnboardingDots (pagination indicator)
  - Active dot: gold #D4A843, size 10
  - Inactive dot: muted cream #A89880 opacity 0.4, size 8
  - Animated transition between dots
- OnboardingNextButton
  - Rounded gold button التالي ← for pages 1 and 2
  - Full width gold button ابدأ الآن ← for page 3
- Skip button top right (تخطى muted cream text)

### Pages Static Content
Page 1:
  title: اقترب.. حان وقت لقاء الله
  subtitle: تذكر بالصلاة في وقتها بأذان يطرب الأسماع

Page 2:
  title: القرآن الكريم بين يديك
  subtitle: اقرأ وتدبّر وأنصت إلى أجمل التلاوات مع التفسير والترجمة

Page 3:
  title: وردك اليومي بين يديك
  subtitle: تتبع عباداتك وأورادك واجعل الاستمرار في رحلتك الروحية سهلاً

---

## Step 4 — Cubit Placeholders (empty, no logic yet)

- SplashCubit with SplashState (Initial only)
- OnboardingCubit with OnboardingState (Initial only)

---

## Step 5 — Repo Placeholders (empty, no logic yet)

- No repos needed for splash or onboarding

---

## UI Rules (apply to every component)
- Background: #1B4332
- Cards/Surfaces: #163829
- Gold accent: #D4A843
- Text primary: #F5F0E8
- Text secondary: #A89880
- Font: Cairo (Bold for titles, Regular for body)
- Border radius: 16px default
- All visible strings via easy_localization keys
- RTL layout enforced
- No hardcoded strings

---

## Localization Keys Needed
ar.json and en.json must include:

onboarding.skip → تخطى / Skip
onboarding.next → التالي / Next
onboarding.start → ابدأ الآن / Get Started
onboarding.page1_title → اقترب.. حان وقت لقاء الله / Time to Meet Allah
onboarding.page1_subtitle → تذكر بالصلاة... / Get reminded of prayer times...
onboarding.page2_title → القرآن الكريم بين يديك / The Quran in Your Hands
onboarding.page2_subtitle → اقرأ وتدبّر... / Read, reflect and listen...
onboarding.page3_title → وردك اليومي بين يديك / Your Daily Wird
onboarding.page3_subtitle → تتبع عباداتك... / Track your worship...
splash.tagline → YOUR DAILY ISLAMIC COMPANION
splash.est → EST. 1446 AH

---

## Files To Create
lib/core/constants/app_colors.dart
lib/core/constants/app_text_styles.dart
lib/core/utils/assets_data.dart
lib/core/utils/service_locator.dart
lib/features/splash/presentation/views/splash_view.dart
lib/features/splash/presentation/views/widgets/splash_body.dart
lib/features/splash/presentation/views_model/cubit/splash_cubit.dart
lib/features/splash/presentation/views_model/cubit/splash_state.dart
lib/features/onboarding/presentation/views/onboarding_view.dart
lib/features/onboarding/presentation/views/widgets/onboarding_body.dart
lib/features/onboarding/presentation/views/widgets/onboarding_page.dart
lib/features/onboarding/presentation/views/widgets/onboarding_dots.dart
lib/features/onboarding/presentation/views/widgets/onboarding_next_button.dart
lib/features/onboarding/presentation/views_model/cubit/onboarding_cubit.dart
lib/features/onboarding/presentation/views_model/cubit/onboarding_state.dart
assets/translations/ar.json
assets/translations/en.json
