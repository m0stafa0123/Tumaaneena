# Tasks: Splash & Onboarding

## TASK-001 — Core Setup
- [ ] Create lib/core/constants/app_colors.dart with full AppColors class
- [ ] Create lib/core/constants/app_text_styles.dart with AppTextStyles class
- [ ] Create lib/core/utils/assets_data.dart with AssetsData class
- [ ] Create lib/core/utils/service_locator.dart with empty setupServiceLocator()
- [ ] Create lib/core/utils/local_storage_helper.dart placeholder
- [ ] Add easy_localization to pubspec.yaml
- [ ] Add Cairo font to pubspec.yaml
- [ ] Add assets folders to pubspec.yaml:
      assets/images/, assets/fonts/, assets/animations/, assets/translations/
- [ ] Create assets/translations/ar.json with splash + onboarding keys
- [ ] Create assets/translations/en.json with splash + onboarding keys
- [ ] Setup easy_localization in main.dart
- [ ] Set app directionality RTL

## TASK-002 — Splash Screen
- [ ] Create lib/features/splash/presentation/views/splash_view.dart
      Scaffold wrapper only, calls SplashBody
- [ ] Create lib/features/splash/presentation/views/widgets/splash_body.dart
      Full UI:
      - Emerald background #1B4332 full screen Container
      - Radial gradient glow center using RadialGradient
      - Centered Column:
        - Logo image placeholder (gold Container 80x80 rounded)
        - App name طمأنينة Cairo Bold size 42 warm white
        - Tagline from easy_localization spaced caps muted cream size 12
        - EST. 1446 AH muted cream size 11 positioned bottom
- [ ] Create lib/features/splash/presentation/views_model/cubit/splash_cubit.dart
      Empty cubit, SplashInitial state only
- [ ] Create lib/features/splash/presentation/views_model/cubit/splash_state.dart

## TASK-003 — Onboarding Screen
- [ ] Create lib/features/onboarding/presentation/views/onboarding_view.dart
      Scaffold wrapper, BlocProvider for OnboardingCubit
- [ ] Create lib/features/onboarding/presentation/views/widgets/onboarding_body.dart
      PageController, PageView of 3 OnboardingPage widgets
      Stack with dots + buttons at bottom
- [ ] Create lib/features/onboarding/presentation/views/widgets/onboarding_page.dart
      Reusable single page widget:
      - Emerald background + radial glow
      - Image placeholder Container gold border center
      - Title Arabic Cairo Bold warm white size 24
      - Subtitle Cairo Regular muted cream size 14
      Accepts: title, subtitle, imagePath
- [ ] Create lib/features/onboarding/presentation/views/widgets/onboarding_dots.dart
      Row of 3 dots
      Active: gold #D4A843 size 10 rounded
      Inactive: muted cream opacity 0.4 size 8
      Animated with AnimatedContainer
- [ ] Create lib/features/onboarding/presentation/views/widgets/onboarding_next_button.dart
      Pages 1+2: التالي ← rounded gold button width 120
      Page 3: ابدأ الآن ← full width gold button
      Skip button top right تخطى muted cream TextButton
- [ ] Create lib/features/onboarding/presentation/views_model/cubit/onboarding_cubit.dart
      Empty cubit, OnboardingInitial state only
- [ ] Create lib/features/onboarding/presentation/views_model/cubit/onboarding_state.dart

## TASK-004 — Translation Keys
Add to ar.json:
- [ ] splash.tagline → YOUR DAILY ISLAMIC COMPANION
- [ ] splash.est → EST. 1446 AH
- [ ] onboarding.skip → تخطى
- [ ] onboarding.next → التالي
- [ ] onboarding.start → ابدأ الآن
- [ ] onboarding.page1_title → اقترب.. حان وقت لقاء الله
- [ ] onboarding.page1_subtitle → تذكر بالصلاة في وقتها بأذان يطرب الأسماع
- [ ] onboarding.page2_title → القرآن الكريم بين يديك
- [ ] onboarding.page2_subtitle → اقرأ وتدبّر وأنصت إلى أجمل التلاوات
- [ ] onboarding.page3_title → وردك اليومي بين يديك
- [ ] onboarding.page3_subtitle → تتبع عباداتك وأورادك

Add to en.json same keys with English values 
