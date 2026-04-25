# Plan: Home Screen

## Overview
Build Home screen UI only. Tab 1 of bottom navigation.
Static dummy data. Phase 1 — UI only.

---

## Step 1 — MainNavigation

### Goal
5-tab bottom navigation scaffold.
All tabs show placeholder screens for now except Home.

### Bottom Nav Style
- Background: deep emerald #163829
- Active tab: gold icon #D4A843 + small gold dot indicator below
- Inactive tab: muted cream #A89880
- Tabs: Home, Quran, Prayer, Azkar, More
- Use IndexedStack to preserve tab state

### Files
lib/core/navigation/main_navigation.dart

---

## Step 2 — HomeView + HomeBody

### HomeAppBar
- Row layout RTL:
  - Right: circular avatar placeholder gold ring border radius 50
  - Center: طمأنينة Cairo Bold gold #D4A843
  - Left: bell icon gold, small gold dot overlay badge

### PrayerHeroCard
- Deep emerald #163829 rounded 20px
- Shadow: depthShadow #0A1628 opacity 0.3
- Prayer name: العصر Cairo Bold warm white large
- Countdown: 01:24:37 Cairo Bold gold very large
- Thin circular gold progress arc (CustomPainter)
- Location row: pin icon gold + city name مuted cream small

### QuickTilesRow
- Row of 4 equal tiles
- Each tile: deep emerald #163829 rounded 16px
- Gold icon top (use Icons or font_awesome)
- Label below warm white Cairo small
- Tiles: Quran, Azkar, Tasbeeh, Qibla
- onTap empty for now

### DailyAyahCard
- Deep emerald rounded 16px
- Gold top border 2px
- ذكر اليوم label gold small top right
- Arabic ayah text Cairo large warm white
  dummy: وَمَن يَتَّقِ اللَّهَ يَجْعَل لَّهُ مَخْرَجًا
- Translation muted cream smaller
  dummy: And whoever fears Allah, He will make for him a way out
- Surah ref gold small bottom right
  dummy: الطلاق ٢
- Share icon gold top right

### DailyHadithCard
- Same style as DailyAyahCard
- حديث اليوم label gold small
- Hadith text Arabic warm white
  dummy: إنما الأعمال بالنيات
- Narrator muted cream small
  dummy: رواه البخاري

### StreakCard
- Small deep emerald rounded 12px
- Row: flame icon gold + streak number warm white bold + يوم muted cream
- dummy: 7 days

### Files
lib/features/home/presentation/views/home_view.dart
lib/features/home/presentation/views/widgets/home_body.dart
lib/features/home/presentation/views/widgets/home_app_bar.dart
lib/features/home/presentation/views/widgets/prayer_hero_card.dart
lib/features/home/presentation/views/widgets/quick_tiles_row.dart
lib/features/home/presentation/views/widgets/daily_ayah_card.dart
lib/features/home/presentation/views/widgets/daily_hadith_card.dart
lib/features/home/presentation/views/widgets/streak_card.dart

---

## Step 3 — Cubit Placeholder
- HomeInitial state only
- No methods yet

### Files
lib/features/home/presentation/views_model/cubit/home_cubit.dart
lib/features/home/presentation/views_model/cubit/home_state.dart

---

## Localization Keys
home.app_name → طمأنينة / Tumaaneena
home.next_prayer → الصلاة القادمة / Next Prayer
home.quran → القرآن / Quran
home.azkar → الأذكار / Azkar
home.tasbeeh → التسبيح / Tasbeeh
home.qibla → القبلة / Qibla
home.daily_ayah → آية اليوم / Daily Ayah
home.daily_hadith → حديث اليوم / Daily Hadith
home.streak → يوم / Day

---

## Files To Create
lib/core/navigation/main_navigation.dart
lib/features/home/presentation/views/home_view.dart
lib/features/home/presentation/views/widgets/home_body.dart
lib/features/home/presentation/views/widgets/home_app_bar.dart
lib/features/home/presentation/views/widgets/prayer_hero_card.dart
lib/features/home/presentation/views/widgets/quick_tiles_row.dart
lib/features/home/presentation/views/widgets/daily_ayah_card.dart
lib/features/home/presentation/views/widgets/daily_hadith_card.dart
lib/features/home/presentation/views/widgets/streak_card.dart
lib/features/home/presentation/views_model/cubit/home_cubit.dart
lib/features/home/presentation/views_model/cubit/home_state.dart 
