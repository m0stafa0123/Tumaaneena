# Tasks: Prayer Times & Qibla

## TASK-001 — PrayerView
- [ ] Create lib/features/prayer/presentation/views/prayer_view.dart
      Scaffold + BlocProvider PrayerCubit

## TASK-002 — PrayerBody
- [ ] Create lib/features/prayer/presentation/views/widgets/prayer_body.dart
      SingleChildScrollView:
      - Background #1B4332
      - LocationRow
      - Gap 16
      - PrayerHeroCard
      - Gap 16
      - ListView of 6 PrayerListTile (shrinkWrap NeverScrollable)
      - Gap 8
      - CalculationMethodRow
      - Gap 8
      - QiblaButton

## TASK-003 — LocationRow
- [ ] Create lib/features/prayer/presentation/views/widgets/location_row.dart
      Column:
      - Row: pin Icon gold + القاهرة Cairo Bold warm white + Spacer + تغيير gold small
      - Gap 4
      - ١٥ رجب ١٤٤٦ muted cream Cairo size 12

## TASK-004 — PrayerHeroCard
- [ ] Create lib/features/prayer/presentation/views/widgets/prayer_hero_card.dart
      Same as HomeHeroCard with CustomPainter arc
      dummy: العصر — 01:24:37

## TASK-005 — PrayerListTile
- [ ] Create lib/features/prayer/presentation/views/widgets/prayer_list_tile.dart
      Container #163829 rounded 12px
      Left border 3px gold only if isCurrentPrayer
      Row:
      - Prayer name Arabic bold warm white
      - Spacer
      - Time gold Cairo size 14
      - Gap 8
      - bell Icon gold (filled if azanEnabled, outline if not)
      Dummy 6 prayers with static times
      isCurrentPrayer: true for Asr only

## TASK-006 — CalculationMethodRow + QiblaButton
- [ ] Create lib/features/prayer/presentation/views/widgets/calculation_method_row.dart
      Row: طريقة الحساب: muted cream + رابطة العالم الإسلامي muted cream + chevron gold
- [ ] Create lib/features/prayer/presentation/views/widgets/qibla_button.dart
      Container #163829 rounded 12px
      Row: compass Icon gold + اتجاه القبلة warm white
      onTap empty

## TASK-007 — QiblaView
- [ ] Create lib/features/prayer/presentation/views/qibla_view.dart
- [ ] Create lib/features/prayer/presentation/views/widgets/qibla_body.dart
- [ ] Create lib/features/prayer/presentation/views/widgets/qibla_compass.dart
      CustomPainter draws:
      - Outer gold ring with 12 degree markers
      - Inner deep emerald circle
      - Gold needle line pointing up
      - Small Kaaba Icon gold at needle tip
      Static for now (no sensor)
- [ ] Create lib/features/prayer/presentation/views/widgets/qibla_info_section.dart
      Column centered:
      - ١٣٥° Cairo Bold gold size 36
      - Row: green dot + دقيق warm white size 13
      - المسافة إلى مكة المكرمة: ٢٤٠٠ كم muted cream size 13
      - Instruction text muted cream italic size 12

## TASK-008 — Data + Cubit Placeholders
- [ ] Create lib/features/prayer/data/models/prayer_model.dart
- [ ] Create lib/features/prayer/data/repos/prayer_repo.dart
- [ ] Create lib/features/prayer/data/repos/prayer_repo_impl.dart
- [ ] Create lib/features/prayer/presentation/views_model/cubit/prayer_cubit.dart
- [ ] Create lib/features/prayer/presentation/views_model/cubit/prayer_state.dart
