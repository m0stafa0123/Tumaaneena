# Feature: Prayer Times

## Screens
1. PrayerView (Tab 3)
2. QiblaView

## Prayer Times
### UI
- Location row: gold pin icon, city name warm white, change link gold small
- Hijri date muted cream small
- Hero card (deep emerald rounded 20px):
  - Prayer name large Arabic bold warm white
  - Countdown XX:XX:XX large gold numbers
  - Thin circular gold progress arc
- Prayers list (6 rows):
  Fajr, Sunrise, Dhuhr, Asr, Maghrib, Isha
  Each row deep emerald rounded:
  - Prayer name Arabic bold warm white left
  - Time gold center
  - Bell icon gold right (active/muted toggle)
  - Current prayer: gold left border 3px highlight
- Calculation method link bottom muted cream
- Qibla button: navigates to QiblaView

## Qibla
### UI
- Title اتجاه القبلة bold warm white
- Location subtitle muted cream
- Large circular compass:
  - Deep emerald base
  - Gold outer ring with degree markers
  - Gold needle pointing to Qibla
  - Small Kaaba icon gold at needle tip
- Degrees reading large gold number + ° symbol below compass
- Accuracy indicator: green dot دقيق / red dot يتم المعايرة
- Distance: المسافة: XXXX كم muted cream
- Instruction text muted cream small

## Files
- lib/features/prayer/data/models/prayer_model.dart
- lib/features/prayer/data/repos/prayer_repo.dart
- lib/features/prayer/data/repos/prayer_repo_impl.dart
- lib/features/prayer/presentation/views/prayer_view.dart
- lib/features/prayer/presentation/views/qibla_view.dart
- lib/features/prayer/presentation/views/widgets/prayer_body.dart
- lib/features/prayer/presentation/views/widgets/prayer_hero_card.dart
- lib/features/prayer/presentation/views/widgets/prayer_list_tile.dart
- lib/features/prayer/presentation/views/widgets/qibla_compass.dart
- lib/features/prayer/presentation/views/widgets/location_row.dart
- lib/features/prayer/presentation/views_model/cubit/prayer_cubit.dart
- lib/features/prayer/presentation/views_model/cubit/prayer_state.dart
