import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import 'onboarding_dots.dart';
import 'onboarding_next_button.dart';
import 'onboarding_page.dart';
import 'onboarding_page_last.dart';

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
              imagePath: AssetsData.moshafIcon,
            ),
            const OnboardingPageLast(),
          ],
        ),

        // ── 2. Bottom overlay: dots + next button (only on pages 1 & 2) ─────
        if (_currentIndex < 2)
          Positioned(
            bottom: 36,
            left: 24,
            right: 24,
            child: SafeArea(
              child: Row(
                children: [
                  OnboardingNextButton(
                    onTap: () {
                      if (_currentIndex < 2) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                  const Spacer(),
                  OnboardingDots(currentIndex: _currentIndex, count: 3),
                  const Spacer(),
                  const SizedBox(width: 110),
                ],
              ),
            ),
          ),

        // ── 3. Page 3 dots (positioned above the start button) ───────────────
        if (_currentIndex == 2)
          Positioned(
            bottom: 96,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Center(
                child: OnboardingDots(currentIndex: _currentIndex, count: 3),
              ),
            ),
          ),
      ],
    );
  }
}
