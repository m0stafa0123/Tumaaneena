# Plan: Prayer Times & Qibla

## Overview
Build Prayer Times screen and Qibla screen UI only.
Tab 3 of bottom navigation. Static dummy data. Phase 1 — UI only.

---

## Step 1 — PrayerView

### LocationRow
- Row: gold pin icon + city name warm white Cairo Bold
- Change location link gold small right
- Hijri date below: muted cream small
- dummy city: القاهرة
- dummy hijri: ١٥ رجب ١٤٤٦

### PrayerHeroCard
- Same style as Home hero card
- Deep emerald rounded 20px gold shadow
- Prayer name large Arabic bold warm white
- Countdown large gold numbers
- Thin circular gold arc CustomPainter
- dummy: العصر — 01:24:37

### PrayerListTile
- Deep emerald rounded 12px row
- Prayer name Arabic bold warm white left
- Time gold center: ٠٦:٢٤ ص format
- Bell icon gold right (active state: filled, muted: outline)
- Current prayer: gold left border 3px
- 6 rows: الفجر, الشروق, الظهر, العصر, المغرب, العشاء
- dummy times static

### CalculationMethodRow
- Bottom of screen
- طريقة الحساب: رابطة العالم الإسلامي muted cream small
- Tappable gold chevron right (empty onTap for now)

### QiblaButton
- Small deep emerald rounded card
- Compass icon gold + اتجاه القبلة warm white
- Navigate to QiblaView (empty onTap for now)

### Files
lib/features/prayer/presentation/views/prayer_view.dart
lib/features/prayer/presentation/views/widgets/prayer_body.dart
lib/features/prayer/presentation/views/widgets/location_row.dart
lib/features/prayer/presentation/views/widgets/prayer_hero_card.dart
lib/features/prayer/presentation/views/widgets/prayer_list_tile.dart
lib/features/prayer/presentation/views/widgets/calculation_method_row.dart
lib/features/prayer/presentation/views/widgets/qibla_button.dart

---

## Step 2 — QiblaView

### QiblaCompass (CustomPainter)
- Large circle centered on screen
- Outer ring: gold #D4A843 with degree markers every 30°
- Inner circle: deep emerald #163829
- Gold needle pointing up (static for now, no sensor yet)
- Small Kaaba SVG or icon gold at needle top tip
- Shadow: depthShadow opacity 0.3

### QiblaInfoSection
- Degrees reading: ١٣٥° large gold Cairo Bold
- Accuracy row: green dot + دقيق warm white small
- Distance: المسافة إلى مكة المكرمة: ٢٤٠٠ كم muted cream
- Instruction: وجّه الهاتف حتى يتطابق السهم مع الاتجاه muted cream small italic

### Files
lib/features/prayer/presentation/views/qibla_view.dart
lib/features/prayer/presentation/views/widgets/qibla_body.dart
lib/features/prayer/presentation/views/widgets/qibla_compass.dart
lib/features/prayer/presentation/views/widgets/qibla_info_section.dart

---

## Step 3 — Data + Cubit Placeholders

### PrayerModel
- name, time, isActive, isAzanEnabled

### Files
lib/features/prayer/data/models/prayer_model.dart
lib/features/prayer/data/repos/prayer_repo.dart
lib/features/prayer/data/repos/prayer_repo_impl.dart
lib/features/prayer/presentation/views_model/cubit/prayer_cubit.dart
lib/features/prayer/presentation/views_model/cubit/prayer_state.dart

---

## Localization Keys
prayer.title → أوقات الصلاة / Prayer Times
prayer.fajr → الفجر / Fajr
prayer.sunrise → الشروق / Sunrise
prayer.dhuhr → الظهر / Dhuhr
prayer.asr → العصر / Asr
prayer.maghrib → المغرب / Maghrib
prayer.isha → العشاء / Isha
prayer.next_prayer → الصلاة القادمة / Next Prayer
prayer.calculation_method → طريقة الحساب / Calculation Method
prayer.change_location → تغيير الموقع / Change Location
qibla.title → اتجاه القبلة / Qibla Direction
qibla.distance → المسافة إلى مكة المكرمة / Distance to Makkah
qibla.accurate → دقيق / Accurate
qibla.calibrating → يتم المعايرة / Calibrating
qibla.instruction → وجّه الهاتف حتى يتطابق السهم مع الاتجاه / Point phone until arrow aligns
