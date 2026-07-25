import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import 'onboarding_dots.dart';
import 'onboarding_next_button.dart';
import 'onboarding_page.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  late final PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ── 1. PageView fills screen ───────────────────────────────────────
        PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            OnboardingPage(
              title: 'onboarding.page1_title'.tr(),
              subtitle: 'onboarding.page1_subtitle'.tr(),
              iconData: Icons.mosque_outlined,
              backgroundImagePath: AssetsData.mosqueSilhouette,
            ),
            OnboardingPage(
              title: 'onboarding.page2_title'.tr(),
              subtitle: 'onboarding.page2_subtitle'.tr(),
              iconData: Icons.menu_book_outlined,
              imagePath: AssetsData.quranIcon,
            ),
          ],
        ),

        // ── 2. Bottom overlay: dots + next button ──────────────────────────
        Positioned(
          bottom: 36,
          left: 24,
          right: 24,
          child: SafeArea(
            child: Row(
              children: [
                OnboardingNextButton(
                  onTap: () {
                    if (_currentIndex < 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
                const Spacer(),
                OnboardingDots(
                  currentIndex: _currentIndex,
                  count: 2,
                ),
                const Spacer(),
                const SizedBox(width: 110),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
