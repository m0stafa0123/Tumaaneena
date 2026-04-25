# Feature: Home

## Screen: HomeView (Tab 1)

### UI
- Background: #1B4332 with subtle radial glow
- Top bar:
  - Right: circular avatar with gold ring
  - Center: طمأنينة in gold Cairo Bold
  - Left: notification bell icon gold with gold dot badge
- Hero prayer card (deep emerald #163829, rounded 20px):
  - Prayer name Arabic large Cairo Bold warm white
  - Countdown timer XX:XX:XX in large gold numbers
  - Thin circular gold progress arc around timer
  - Location pin icon + city name muted cream small
- Quick tiles row (4 tiles, deep emerald rounded 16px, gold icons):
  - Quran (كتاب icon)
  - Azkar (beads icon)
  - Tasbeeh (counter icon)
  - Qibla (compass icon)
  - Each tile: icon top, label below in warm white small
- Daily Ayah card (deep emerald, gold top border 2px):
  - ذكر اليوم label gold small top right
  - Arabic ayah text Cairo large warm white serif
  - Translation below muted cream smaller
  - Surah reference gold small bottom right
  - Share icon gold top right
- Daily Hadith card (same style as Ayah card):
  - حديث اليوم label gold small
  - Hadith text Arabic warm white
  - Narrator muted cream small
  - Share icon
- Streak card (small, deep emerald):
  - Flame icon gold
  - Streak number warm white bold
  - يوم label muted cream

### Logic (Phase 2)
- PrayerCubit for next prayer + countdown
- QuranCubit for daily ayah
- HadithCubit for daily hadith
- StreakCubit for streak count
- Quick tiles navigate to respective screens

### Files
- lib/features/home/presentation/views/home_view.dart
- lib/features/home/presentation/views/widgets/home_body.dart
- lib/features/home/presentation/views/widgets/home_app_bar.dart
- lib/features/home/presentation/views/widgets/prayer_hero_card.dart
- lib/features/home/presentation/views/widgets/quick_tiles_row.dart
- lib/features/home/presentation/views/widgets/daily_ayah_card.dart
- lib/features/home/presentation/views/widgets/daily_hadith_card.dart
- lib/features/home/presentation/views/widgets/streak_card.dart
- lib/features/home/presentation/views_model/cubit/home_cubit.dart
- lib/features/home/presentation/views_model/cubit/home_state.dart
