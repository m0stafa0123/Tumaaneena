# Plan: Quran

## Overview
Build Quran Home, Reader, and Khatma Tracker UI only.
Tab 2 of bottom navigation. Static dummy data. Phase 1 — UI only.

---

## Step 1 — QuranHomeView

### QuranSearchBar
- Deep emerald #163829 rounded 24px
- Gold search icon left
- Placeholder ابحث عن سورة muted cream
- Cairo Regular

### QuranTabPills
- Row of 3 pills: قراءة / تفسير / ترجمة
- Active: gold background #D4A843 dark text rounded 20px
- Inactive: deep emerald #163829 warm white text

### LastReadBanner
- Full width deep emerald card gold border 1px rounded 12px
- Right: book icon gold
- Text: استكمل من حيث توقفت warm white
- Surah + ayah dummy: البقرة - آية ٢٥٥ muted cream small
- Left: gold chevron arrow

### SurahListTile
- Deep emerald rounded 12px
- Left: surah number in gold circle (size 36)
- Center: surah name Arabic bold warm white + surah name English muted cream small
- Right: ayah count gold small
- Dummy data: list of 10 surahs

### Files
lib/features/quran/presentation/views/quran_home_view.dart
lib/features/quran/presentation/views/widgets/quran_home_body.dart
lib/features/quran/presentation/views/widgets/quran_search_bar.dart
lib/features/quran/presentation/views/widgets/quran_tab_pills.dart
lib/features/quran/presentation/views/widgets/last_read_banner.dart
lib/features/quran/presentation/views/widgets/surah_list_tile.dart

---

## Step 2 — QuranReaderView

### ReaderAppBar
- Back arrow gold left
- Sura name center warm white Cairo Bold
- Bookmark icon gold right
- Page + juz info muted cream small below

### AyahWidget
- Arabic text Uthmanic font large warm white RTL
- Ayah number: small gold circle inline end of ayah
- Translation text below: muted cream smaller Cairo (toggleable)
- Dummy: first 5 ayahs of Al-Fatiha

### ReaderToolbar
- Floating bottom pill deep emerald
- 5 gold icons: chevron-left, play, chevron-right, font-size, book-open
- Shadow: depthShadow opacity 0.4

### AudioPlayerBar
- Bottom bar deep emerald #163829
- Sura name warm white left
- Reciter name muted cream small below sura name
- Gold play/pause button center
- Thin gold progress bar below
- dummy reciter: عبد الباسط عبد الصمد

### Files
lib/features/quran/presentation/views/quran_reader_view.dart
lib/features/quran/presentation/views/widgets/reader_app_bar.dart
lib/features/quran/presentation/views/widgets/ayah_widget.dart
lib/features/quran/presentation/views/widgets/reader_toolbar.dart
lib/features/quran/presentation/views/widgets/audio_player_bar.dart

---

## Step 3 — KhatmaTrackerView

### KhatmaProgressCard
- Deep emerald rounded 20px
- Circular gold progress ring (CustomPainter) with % text center
- الختمة الحالية label warm white
- Pages read / 604 warm white bold
- Start date muted cream small
- تحديث التقدم gold outlined button

### SuraMemorizationGrid
- GridView 6 columns, 114 tiles
- Memorized tile: gold background #D4A843 sura number dark text
- Not memorized: deep emerald outline gold border
- Filter pills top: الكل / محفوظ / غير محفوظ

### Files
lib/features/quran/presentation/views/khatma_tracker_view.dart
lib/features/quran/presentation/views/widgets/khatma_progress_card.dart
lib/features/quran/presentation/views/widgets/sura_memorization_grid.dart
lib/features/quran/presentation/views/widgets/sura_filter_pills.dart

---

## Step 4 — Data + Cubit Placeholders

### Models
- SurahModel: id, nameAr, nameEn, ayahCount, type
- AyahModel: number, textAr, textEn, surahId
- KhatmaModel: pagesRead, totalPages, startDate

### Files
lib/features/quran/data/models/surah_model.dart
lib/features/quran/data/models/ayah_model.dart
lib/features/quran/data/models/khatma_model.dart
lib/features/quran/data/repos/quran_repo.dart
lib/features/quran/data/repos/quran_repo_impl.dart
lib/features/quran/presentation/views_model/cubit/quran_cubit.dart
lib/features/quran/presentation/views_model/cubit/quran_state.dart

---

## Localization Keys
quran.title → القرآن الكريم / The Holy Quran
quran.search → ابحث عن سورة / Search surah
quran.read → قراءة / Read
quran.tafseer → تفسير / Tafseer
quran.translation → ترجمة / Translation
quran.last_read → استكمل من حيث توقفت / Continue where you left off
quran.ayah_count → آية / Ayahs
quran.khatma_title → متابعة الختمة والحفظ / Khatma & Memorization
quran.current_khatma → الختمة الحالية / Current Khatma
quran.update_progress → تحديث التقدم / Update Progress
quran.all → الكل / All
quran.memorized → محفوظ / Memorized
quran.not_memorized → غير محفوظ / Not Memorized
