# طمأنينة — App Constitution

## Project Identity
- App Name: طمأنينة (Tumaaneena)
- Type: Islamic mobile app
- Platforms: Android + iOS
- Languages: Arabic (default) + English
- Version: 1.0.0+1
- SDK: Dart ^3.9.0

## Architecture Pattern
- Feature-first folder structure
- Clean Architecture (Data → Domain → Presentation)
- SOLID principles enforced

## Folder Structure
lib/
  core/
    constants/     → app_colors.dart, app_text_styles.dart
    errors/        → failure.dart
    network/       → api_service.dart, dio_interceptor.dart
    navigation/    → main_navigation.dart
    utils/         → assets_data.dart, local_storage_helper.dart, service_locator.dart
    widgets/       → shared reusable widgets
  features/
    splash/
    onboarding/
    auth/
    home/
    quran/
    prayer/
    azkar/
    tasbeeh/
    qibla/
    hadith/
    names/
    hijri/
    duaa/
    khatma/
    profile/
    settings/
  main.dart

## Each Feature Internal Structure
feature/
  data/
    models/
    repos/
      feature_repo.dart         ← abstract
      feature_repo_impl.dart    ← implementation
  presentation/
    views/
      feature_view.dart
      widgets/
    views_model/
      cubit/
        feature_cubit.dart
        feature_state.dart

## Tech Stack
- State Management: flutter_bloc (Cubit only)
- DI: get_it
- Navigation: get (navigation only, no GetX state management)
- HTTP: dio
- Secure Storage: flutter_secure_storage
- Error Handling: dartz (Either)
- Localization: easy_localization
- Fonts: google_fonts
- Animations: lottie
- Images: cached_network_image
- Icons: font_awesome_flutter
- Spacing: gap
- Snackbar: animated_snack_bar

## State Management Rules
- Cubit only — no full Bloc
- Every cubit has its own state file using part of
- States pattern: Initial, Loading, Success, Failure
- BlocProvider at screen level, not app level

## Error Handling Rules
- Failure abstract class
- ServerFailure with fromDioError + fromResponse factory constructors
- All repo methods return Future<Either<Failure, T>>
- UI reads failure.errmessage for display

## API Rules
- Single ApiService wrapper around Dio
- Base URL in one place only
- Auth token injected via Dio interceptor (not manually per request)
- Placeholder base URL: https://placeholder.tumaaneena.api/v1/

## Storage Rules
- JWT token → flutter_secure_storage
- User preferences (theme, language) → shared_preferences

## Navigation Rules
- Get.to() for push
- Get.offAll() for replacing full stack
- Get.back() for pop
- No GoRouter
- No named routes

## DI Rules
- All repos and services registered in setupServiceLocator()
- Called once in main() before runApp
- Use getIt.get<T>() everywhere

## Localization Rules
- Package: easy_localization
- Supported locales: Locale('ar'), Locale('en')
- Default locale: Locale('ar')
- Fallback locale: Locale('en')
- Translation files: assets/translations/ar.json and assets/translations/en.json
- Keys format: "feature.key" e.g. "auth.login", "prayer.fajr", "home.title"
- Wrap MaterialApp with EasyLocalization in main.dart

## Color System
class AppColors {
  static const backgroundColor = Color(0xFF1B4332);
  static const gradientCenter  = Color(0xFF2D6A4F);
  static const surfaceColor    = Color(0xFF163829);
  static const primaryAccent   = Color(0xFFD4A843);
  static const textPrimary     = Color(0xFFF5F0E8);
  static const textSecondary   = Color(0xFFA89880);
  static const depthShadow     = Color(0xFF0A1628);
  static const errorColor      = Color(0xFFE57373);
  static const successColor    = Color(0xFF81C784);
}

## Typography Rules
- Arabic headings: Cairo font (bold)
- Body text: Cairo font (regular)
- English fallback: Inter
- Use getResponsiveFontSize() for all font sizes
- Never hardcode font sizes directly in widgets

## UI Development Rules
- UI phase comes first — all screens built with static dummy data
- No API calls or real logic until UI phase is fully complete
- Every screen: feature_view.dart + feature_body.dart + widgets/ folder
- No hardcoded strings — all text goes through easy_localization
- RTL enforced at app level via easy_localization
- Default border radius: 16px
- Bottom navigation: 5 tabs — Home, Quran, Prayer, Azkar, More

## Widget Splitting Rule (MANDATORY)
Every screen body must split its UI into separate widget files.
NEVER put multiple private widget classes (_WidgetName) in one file.
Each widget gets its own file in the widgets/ folder.

Example for splash:
- widgets/splash_background.dart
- widgets/splash_logo.dart
- widgets/splash_content.dart
- widgets/splash_bottom_caption.dart
- widgets/geometric_overlay.dart

This applies to every single screen in the app, no exceptions.

## Naming Conventions
- Files: snake_case
- Classes: PascalCase
- Variables and functions: camelCase
- Constants: camelCase inside abstract class
- Cubits: FeatureNameCubit / FeatureNameState
- Views: FeatureNameView / FeatureNameBody
- Repos: FeatureNameRepo (abstract) / FeatureNameRepoImpl (implementation)

## Asset Structure
assets/
  images/
  fonts/
  animations/
  icons/
  translations/
    ar.json
    en.json

## Guest Mode
- App is fully browsable without login
- Auth-required actions show a bottom sheet prompt to login
- Guest state stored in LocalStorageHelper

## Development Phases
1. Phase 1 — UI: All screens with static data, no logic
2. Phase 2 — Logic: Wire cubits, repos, API calls per feature
3. Phase 3 — Polish: Animations, performance, offline support
