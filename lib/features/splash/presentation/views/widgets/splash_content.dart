import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tumaaneena/core/utils/app_text_styles.dart';

import 'splash_logo.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.logoFadeAnimation,
    required this.logoScaleAnimation,
    required this.nameFadeAnimation,
    required this.nameSlideAnimation,
    required this.taglineFadeAnimation,
  });

  final Animation<double> logoFadeAnimation;
  final Animation<double> logoScaleAnimation;
  final Animation<double> nameFadeAnimation;
  final Animation<Offset> nameSlideAnimation;
  final Animation<double> taglineFadeAnimation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ── Logo: FadeTransition + ScaleTransition ─────────────────────
            FadeTransition(
              opacity: logoFadeAnimation,
              child: ScaleTransition(
                scale: logoScaleAnimation,
                child: const SplashLogo(),
              ),
            ),

            const SizedBox(height: 36),

            // ── App name: FadeTransition + SlideTransition ──────────────────
            FadeTransition(
              opacity: nameFadeAnimation,
              child: SlideTransition(
                position: nameSlideAnimation,
                child: Text(
                  'طمأنينة',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.heading1,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // ── Tagline: FadeTransition ──────────────────────────────────────
            FadeTransition(
              opacity: taglineFadeAnimation,
              child: Text(
                'splash.tagline'.tr(),
                textAlign: TextAlign.center,
                style: AppTextStyles.body2Bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
