# Feature: Splash & Onboarding

## Screens
1. SplashScreen
2. OnboardingScreen (3 pages)

## Splash
### UI
- Scaffold with emerald background #1B4332
- Center radial glow effect (lighter emerald #2D6A4F)
- Subtle Islamic geometric pattern at low opacity
- Centered column:
  - App logo image (crescent + ط) in gold with soft glow
  - App name طمأنينة in Cairo Bold, warm white, large
  - Tagline YOUR DAILY ISLAMIC COMPANION in tiny spaced caps, muted cream
  - EST. 1446 AH in tiny muted cream at bottom
- No buttons

### Logic (Phase 2)
- Check token from LocalStorageHelper
- Token exists → Get.offAll to MainNavigation
- No token → Get.offAll to OnboardingScreen
- Delay: 3 seconds

### Files
- lib/features/splash/presentation/views/splash_view.dart
- lib/features/splash/presentation/views/widgets/splash_body.dart

---

## Onboarding
### UI
- PageView with 3 pages, swipeable
- Each page: emerald background, center radial glow
- Top right: تخطى skip button (muted cream text)
- Center: illustration image placeholder
- Title: bold Cairo Arabic, warm white
- Subtitle: Cairo regular, muted cream, smaller
- Bottom: pagination dots (active = gold, inactive = dim)
- Next button: rounded, gold background, dark text, التالي ←
- Page 3 button: full width, gold, ابدأ الآن ←

### Pages Content
- Page 1: title اقترب حان وقت لقاء الله
         subtitle تذكر بالصلاة في وقتها بأذان يطرب الأسماع
- Page 2: title القرآن الكريم بين يديك
         subtitle اقرأ وتدبّر وأنصت إلى أجمل التلاوات مع التفسير والترجمة
- Page 3: title وردك اليومي بين يديك
         subtitle تتبع عباداتك وأورادك واجعل الاستمرار في رحلتك الروحية سهلاً

### Logic (Phase 2)
- Skip → WelcomeScreen
- ابدأ الآن → WelcomeScreen
- Save onboarding seen flag in LocalStorageHelper

### Files
- lib/features/onboarding/presentation/views/onboarding_view.dart
- lib/features/onboarding/presentation/views/widgets/onboarding_body.dart
- lib/features/onboarding/presentation/views/widgets/onboarding_page.dart
- lib/features/onboarding/presentation/views/widgets/onboarding_dots.dart
- lib/features/onboarding/presentation/views/widgets/onboarding_next_button.dart
