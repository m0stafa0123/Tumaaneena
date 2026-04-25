# طمأنينة — Full App Specification

## Overview
طمأنينة is a comprehensive Islamic companion app for Arabic and English
speaking Muslims. It provides all daily worship tools in one place with
a premium emerald green and gold UI.

## Target Users
- Arabic-speaking Muslims
- English-speaking Muslims (non-Arab)
- All ages, mobile users (Android + iOS)

## App Flow
Splash → Onboarding (3 screens) → Welcome → Auth → Home (Bottom Nav)

---

## Screens & Features

### 1. Splash
- App logo (crescent + ط letter) centered
- Emerald green background with radial glow
- App name طمأنينة in Arabic serif
- Tagline: YOUR DAILY ISLAMIC COMPANION
- Auto-navigate: token exists → Home, no token → Onboarding

### 2. Onboarding (3 screens, swipeable)
- Screen 1: Prayer Times illustration, title اقترب حان وقت لقاء الله
- Screen 2: Quran illustration, title القرآن الكريم بين يديك
- Screen 3: Daily Worship illustration, title وردك اليومي بين يديك
- Pagination dots, Next button, Skip link
- Last screen: ابدأ الآن button → Welcome

### 3. Welcome
- App logo top
- بسم الله الرحمن الرحيم calligraphy
- Sign Up button (gold)
- Login button (outlined)
- Continue as Guest text link

### 4. Auth — Sign Up
- Fields: Full Name, Email, Password, Confirm Password
- Social: Google, Facebook, Apple
- Navigate to Home on success

### 5. Auth — Login
- Fields: Email, Password
- Forgot Password link
- Social: Google, Facebook, Apple
- Navigate to Home on success

### 6. Auth — Forgot Password
- Email input
- Send reset link button
- Success confirmation state

### 7. Home (Tab 1)
- Top bar: avatar, app name طمأنينة, notification bell
- Hero card: next prayer name + countdown timer + gold progress arc + location
- Quick tiles row: Quran, Azkar, Tasbeeh, Qibla
- Daily Ayah card: Arabic text + translation + surah reference
- Daily Hadith card: hadith text + narrator
- Daily streak badge: flame icon + streak number

### 8. Quran (Tab 2)
- Search bar for sura
- Tabs: قراءة / تفسير / ترجمة
- Last read banner (auto-saved bookmark)
- Sura list: number, name AR, name EN, ayah count

### 9. Quran Reader
- Uthmanic Arabic font, large
- Ayah numbers in gold circles inline
- Translation toggle below each ayah
- Floating toolbar: prev, play audio, next, font size, tafseer
- Audio player bar when active: reciter name, progress, play/pause

### 10. Khatma & Sura Tracker (inside Quran tab)
- Khatma card: circular gold progress ring, pages read, start date, update button
- Sura memorization grid: 114 tiles, gold = memorized, outlined = not yet
- Filter: الكل / محفوظ / غير محفوظ

### 11. Prayer Times (Tab 3)
- Location row: city name, change location link
- Hijri date
- Hero card: next prayer + countdown + circular gold arc
- List of all prayers: name, time, azan toggle bell
- Current prayer highlighted with gold left border
- Calculation method link at bottom

### 12. Qibla (inside Prayer tab)
- Circular compass: gold outer ring, gold needle, Kaaba icon at tip
- Degrees reading in gold
- Accuracy indicator: green dot دقيق / red dot يتم المعايرة
- Distance to Makkah in km
- Instruction text

### 13. Azkar (Tab 4)
- Featured azkar card (gold border, ذكر اليوم)
- Category grid 2 columns: Sabah, Masaa, Sleep, After Prayer, Various, Duaa
- Each card: gold icon, category name, count

### 14. Azkar Reader
- Back arrow, category title, progress X/Total
- Main azkar card: text, source reference, repeat count badge
- Large gold circular counter button (tap to count down)
- Auto-advance on complete with animation
- Thin gold progress bar at top

### 15. Tasbeeh
- Current tasbeeha text centered
- Large circular tap counter with gold ring
- Preset pills: سبحان الله, الحمد لله, الله أكبر, لا إله إلا الله
- Target count 33 default with gold progress arc
- Reset button
- Session total tracker

### 16. More (Tab 5) — contains:
- Hadith
- 99 Names of Allah
- Hijri Calendar
- Duaa Collection
- Profile
- Settings

### 17. Hadith Home
- Daily hadith card (gold border, share + bookmark)
- Books grid 2 columns: البخاري, مسلم, الترمذي, أبو داود, ابن ماجه, النسائي

### 18. Hadith Chapters
- Book title, total chapters count
- Search bar
- Chapter list: number, name, hadith count, chevron

### 19. Hadith List
- Chapter name, book name
- Hadith cards: number, text preview, expand, narrator chain

### 20. Hadith Reader
- Isnad section (narrator chain)
- Gold divider
- Matn section (hadith body, large Arabic)
- Source badge + Grade badge (صحيح / ضعيف)
- Translation toggle EN
- Prev / Next navigation

### 21. 99 Names of Allah
- Featured name: huge gold Arabic calligraphy, transliteration, meaning
- Grid 3 columns: number, name, short meaning
- Search bar

### 22. Hijri Calendar
- Month/year title AR with prev/next arrows
- Gregorian date subtitle
- Calendar grid: today gold, Islamic occasions marked with gold dot
- Upcoming occasions list: name, days remaining badge, Hijri date

### 23. Duaa Collection
- Search bar
- Category filter pills: الكل, الصباح, المساء, السفر, الطعام, النوم, الشفاء
- Duaa cards: Arabic text, source, transliteration toggle, bookmark + share

### 24. Profile
- Avatar with gold ring, name, member since
- Stats row: Streak, Khatma count, Azkar count (3 cards)
- Achievements horizontal scroll (badges)
- Menu list: edit profile, notifications, language, theme, calculation method,
  about app, logout (red)

### 25. Settings
- Section العبادة: calculation method, azan sound per prayer
- Section التطبيق: language toggle AR/EN, theme light/dark, font size slider
- Section الإشعارات: prayer alerts, morning azkar, evening azkar, daily hadith
- Section الحساب: edit profile, change password, delete account (red)

---

## UI Rules (Phase 1 — UI Only)
- All screens use static dummy data
- No API calls, no cubit logic yet
- Every screen: view.dart + body.dart + widgets/ folder
- Cubit files created but empty (placeholder states only)
- Repo files created but empty (placeholder return only)

## Color System (from constitution)
- Background: #1B4332 (vivid emerald)
- Surface/Cards: #163829 (deep emerald)
- Accent: #D4A843 (gold)
- Text Primary: #F5F0E8 (warm white)
- Text Secondary: #A89880 (muted cream)
- Depth/Shadow: #0A1628 (royal blue)

## Typography
- Font: Cairo (Arabic + English)
- Headings: Cairo Bold
- Body: Cairo Regular
- Ayah/Hadith text: larger size, Cairo or Amiri

## Localization
- All visible strings via easy_localization
- Keys: feature.key format
- Files: assets/translations/ar.json + en.json

## Bottom Navigation
- Tab 1: Home — بيت icon
- Tab 2: Quran — كتاب icon
- Tab 3: Prayer — mosque icon
- Tab 4: Azkar — beads icon
- Tab 5: More — grid icon
- Active tab: gold icon + gold dot indicator
- Inactive: muted cream
- Nav bar background: deep emerald #163829
