import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.title,
    required this.subtitle,
    this.iconData,
    this.imagePath,
    this.backgroundImagePath,
    this.onSkipTap,
  });

  final String title;
  final String subtitle;
  final IconData? iconData;
  final String? imagePath;
  final String? backgroundImagePath;
  final VoidCallback? onSkipTap;

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
                colors: [
                  AppColors.gradientCenter,
                  AppColors.backgroundColor,
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),

          // ── 2. Background image overlay (if provided) ─────────────────────
          if (backgroundImagePath != null)
            Positioned.fill(
              child: Opacity(
                opacity: 0.25,
                child: Image.asset(
                  backgroundImagePath!,
                  fit: BoxFit.cover,
                ),
              ),
            ),

          // ── 3. Page Content Layout ─────────────────────────────────────────
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const Gap(16),
                  // ── Top Header Row ─────────────────────────────────────────
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // Top center app name
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'طمأنينة',
                          style: AppTextStyles.heading3.copyWith(
                            color: AppColors.primaryAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Top left skip button
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: onSkipTap ?? () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            'onboarding.skip'.tr(),
                            style: AppTextStyles.small.copyWith(
                              color: AppColors.textSecondary,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Spacer(flex: 2),

                  // ── Center Icon / Image Container ──────────────────────────
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: AppColors.surfaceColor.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: AppColors.primaryAccent,
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryAccent.withValues(alpha: 0.15),
                          blurRadius: 20,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: _buildIconOrImage(),
                  ),

                  const Gap(36),

                  // ── Title Arabic Cairo Bold ────────────────────────────────
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.heading2.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),

                  const Gap(14),

                  // ── Subtitle Arabic Cairo Regular ──────────────────────────
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.small.copyWith(
                        fontSize: 14,
                        color: AppColors.textSecondary,
                        height: 1.6,
                      ),
                    ),
                  ),

                  const Spacer(flex: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconOrImage() {
    if (imagePath != null && imagePath!.isNotEmpty) {
      if (imagePath!.endsWith('.svg')) {
        return SvgPicture.asset(
          imagePath!,
          width: 54,
          height: 54,
          colorFilter: const ColorFilter.mode(
            AppColors.primaryAccent,
            BlendMode.srcIn,
          ),
        );
      }
      return Image.asset(
        imagePath!,
        width: 60,
        height: 60,
        fit: BoxFit.contain,
      );
    } else if (iconData != null) {
      return Icon(
        iconData,
        color: AppColors.primaryAccent,
        size: 54,
      );
    }
    return const SizedBox.shrink();
  }
}
