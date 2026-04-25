# Feature: Quran

## Screens
1. QuranHomeView
2. QuranReaderView
3. KhatmaTrackerView

## Quran Home
### UI
- Title القرآن الكريم bold warm white
- Search bar: deep emerald, gold icon, placeholder ابحث عن سورة
- Three tab pills: قراءة / تفسير / ترجمة
  active: gold background dark text, inactive: deep emerald
- Last read banner: gold border card, استكمل من حيث توقفت, surah + ayah ref, gold arrow
- Sura list:
  each item deep emerald rounded card:
  - Sura number in gold circle left
  - Sura name Arabic bold warm white
  - Sura name English muted cream small
  - Ayah count gold small right

## Quran Reader
### UI
- Background: #163829 (darker for reading comfort)
- Top bar: back arrow gold, sura name center warm white, bookmark icon gold right
- Page/juz info muted cream small below title
- Arabic Quran text: Uthmanic font, large, warm white, RTL centered
- Ayah numbers: small gold circles inline
- Translation below each ayah: muted cream smaller (toggleable)
- Floating bottom toolbar (deep emerald pill):
  gold icons: prev ayah, play audio, next ayah, font size, tafseer toggle
- Audio player bar when active:
  sura name, reciter name muted cream, gold play/pause, thin gold progress bar

## Khatma Tracker
### UI
- Title متابعة الختمة والحفظ bold warm white
- Khatma card (deep emerald rounded):
  - Circular gold progress ring with percentage
  - الختمة الحالية label
  - Pages read / total pages warm white
  - Start date muted cream
  - تحديث التقدم gold button
- Sura memorization grid: 114 tiles
  - Memorized: filled gold
  - Not memorized: deep emerald outline
- Filter pills: الكل / محفوظ / غير محفوظ

## Files
- lib/features/quran/data/models/surah_model.dart
- lib/features/quran/data/models/ayah_model.dart
- lib/features/quran/data/models/khatma_model.dart
- lib/features/quran/data/repos/quran_repo.dart
- lib/features/quran/data/repos/quran_repo_impl.dart
- lib/features/quran/presentation/views/quran_home_view.dart
- lib/features/quran/presentation/views/quran_reader_view.dart
- lib/features/quran/presentation/views/khatma_tracker_view.dart
- lib/features/quran/presentation/views/widgets/surah_list_tile.dart
- lib/features/quran/presentation/views/widgets/last_read_banner.dart
- lib/features/quran/presentation/views/widgets/quran_search_bar.dart
- lib/features/quran/presentation/views/widgets/reader_toolbar.dart
- lib/features/quran/presentation/views/widgets/audio_player_bar.dart
- lib/features/quran/presentation/views/widgets/khatma_progress_card.dart
- lib/features/quran/presentation/views/widgets/sura_memorization_grid.dart
- lib/features/quran/presentation/views_model/cubit/quran_cubit.dart
- lib/features/quran/presentation/views_model/cubit/quran_state.dart
