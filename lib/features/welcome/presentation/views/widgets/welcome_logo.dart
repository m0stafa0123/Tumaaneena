import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/assets_data.dart';

class WelcomeLogo extends StatelessWidget {
  const WelcomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          AssetsData.logo,
          width: 72,
          height: 72,
          errorBuilder: (context, error, stackTrace) {
            // Fallback just in case logo.png doesn't exist yet
            return Container(
              width: 72,
              height: 72,
              decoration: const BoxDecoration(
                color: AppColors.surfaceColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.mosque,
                color: AppColors.primaryAccent,
                size: 40,
              ),
            );
          },
        ),
        const Gap(8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'طمأنينة',
              style: AppTextStyles.heading3.copyWith(
                color: AppColors.primaryAccent,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(4),
            const Icon(
              Icons.circle,
              size: 6,
              color: AppColors.primaryAccent,
            ),
          ],
        ),
      ],
    );
  }
}
