# Tasks: Home Screen

## TASK-001 — MainNavigation
- [ ] Create lib/core/navigation/main_navigation.dart
      StatefulWidget with IndexedStack + BottomNavigationBar
      5 tabs: Home, Quran, Prayer, Azkar, More
      All tabs except Home show placeholder Scaffold with centered Text
      BottomNavigationBar style:
      - Background #163829
      - Selected color gold #D4A843
      - Unselected color muted cream #A89880
      - Type: fixed
      - Active tab: small gold dot indicator (use Stack)

## TASK-002 — HomeView + HomeBody
- [ ] Create lib/features/home/presentation/views/home_view.dart
      Scaffold + BlocProvider HomeCubit
- [ ] Create lib/features/home/presentation/views/widgets/home_body.dart
      SingleChildScrollView with all home widgets stacked
      Background #1B4332

## TASK-003 — HomeAppBar
- [ ] Create lib/features/home/presentation/views/widgets/home_app_bar.dart
      Row RTL:
      - Right: CircleAvatar 36px gold ring border 2px
      - Center: طمأنينة Cairo Bold gold #D4A843 size 20
      - Left: Stack(bell Icon gold + small gold dot Container 8px top right)

## TASK-004 — PrayerHeroCard
- [ ] Create lib/features/home/presentation/views/widgets/prayer_hero_card.dart
      Container #163829 rounded 20px padding 20
      BoxShadow depthShadow opacity 0.3
      Column:
      - Prayer name العصر Cairo Bold warm white size 18
      - Stack: CustomPaint circular arc + countdown text
        Countdown: 01:24:37 Cairo Bold gold size 40
        CustomPainter draws thin gold arc stroke
      - Row: pin Icon gold + القاهرة muted cream size 12

## TASK-005 — QuickTilesRow
- [ ] Create lib/features/home/presentation/views/widgets/quick_tiles_row.dart
      Row of 4 equal Expanded tiles
      Each tile Container #163829 rounded 16px padding 12:
      - Icon gold size 28 top
      - Label warm white Cairo size 12 bottom
      - onTap empty
      Tiles: Quran(book), Azkar(beads→star), Tasbeeh(refresh), Qibla(explore)

## TASK-006 — DailyAyahCard
- [ ] Create lib/features/home/presentation/views/widgets/daily_ayah_card.dart
      Container #163829 rounded 16px
      Border top gold 2px (use BoxDecoration border)
      Column padding 16:
      - Row: آية اليوم gold small + Spacer + share Icon gold
      - Ayah text Arabic Cairo size 18 warm white RTL
        dummy: وَمَن يَتَّقِ اللَّهَ يَجْعَل لَّهُ مَخْرَجًا
      - Translation muted cream size 13
        dummy: And whoever fears Allah He will make for him a way out
      - Surah ref gold size 12 right aligned
        dummy: الطلاق ٢

## TASK-007 — DailyHadithCard
- [ ] Create lib/features/home/presentation/views/widgets/daily_hadith_card.dart
      Same structure as DailyAyahCard:
      - حديث اليوم label gold
      - Hadith text warm white: إنما الأعمال بالنيات
      - Narrator muted cream: رواه البخاري

## TASK-008 — StreakCard
- [ ] Create lib/features/home/presentation/views/widgets/streak_card.dart
      Small Container #163829 rounded 12px padding 10 12
      Row: flame Icon gold size 20 + 7 warm white bold + يوم muted cream size 12

## TASK-009 — Cubit Placeholder
- [ ] Create lib/features/home/presentation/views_model/cubit/home_cubit.dart
- [ ] Create lib/features/home/presentation/views_model/cubit/home_state.dart
      HomeInitial only

## TASK-010 — Translation Keys
- [ ] Add to ar.json + en.json:
      home.app_name, home.next_prayer, home.quran,
      home.azkar, home.tasbeeh, home.qibla,
      home.daily_ayah, home.daily_hadith, home.streak
