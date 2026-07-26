import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class WelcomeTitleSection extends StatelessWidget {
  const WelcomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'welcome.title'.tr(),
          textAlign: TextAlign.center,
          style: AppTextStyles.heading2.copyWith(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const Gap(12),
        const Icon(
          Icons.favorite,
          size: 18,
          color: AppColors.primaryAccent,
        ),
        const Gap(12),
        Text(
          'welcome.tagline'.tr(),
          textAlign: TextAlign.center,
          style: AppTextStyles.small.copyWith(
            fontSize: 14,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}
