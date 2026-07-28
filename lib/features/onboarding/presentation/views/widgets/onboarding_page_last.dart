import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:gap/gap.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../welcome/presentation/views/welcome_view.dart';

class OnboardingPageLast extends StatelessWidget {
  const OnboardingPageLast({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          // ── 1. Radial gradient background ─────────────────────────────────
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.0, -0.2),
                radius: 0.85,
                colors: [AppColors.gradientCenter, AppColors.backgroundColor],
                stops: [0.0, 1.0],
              ),
            ),
          ),

          // ── 2. Page Content Layout ─────────────────────────────────────────
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const Gap(16),
                  // ── Top Header Row (Center title, no skip) ────────────────
                  Center(
                    child: Text(
                      'طمأنينة',
                      style: AppTextStyles.heading3.copyWith(
                        color: AppColors.primaryAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const Spacer(flex: 2),

                  // ── Center Circular White Container (140x140) ──────────────
                  Container(
                    width: 140,
                    height: 140,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      AssetsData.tasbeeh,
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),

                  const Gap(36),

                  // ── Title Arabic Cairo Bold warm white #F5F0E8 size 24 ───
                  Text(
                    'onboarding.page3_title'.tr(),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.heading2.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),

                  const Gap(14),

                  // ── Subtitle Arabic Cairo Regular muted cream #A89880 size 14 ──
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'onboarding.page3_subtitle'.tr(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.small.copyWith(
                        fontSize: 14,
                        color: AppColors.textSecondary,
                        height: 1.6,
                      ),
                    ),
                  ),

                  const Spacer(flex: 2),

                  // ── Bottom Full Width Gold Button ─────────────────────────
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const WelcomeView());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryAccent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'onboarding.start'.tr(),
                            style: AppTextStyles.body2Bold.copyWith(
                              color: AppColors.surfaceColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(8),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColors.surfaceColor,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Gap(24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
