import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'package:get/get.dart' hide Trans;
import '../../../../onboarding/presentation/views/onboarding_view.dart';

class WelcomeButtonsSection extends StatelessWidget {
  const WelcomeButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => const OnboardingView());
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
                  'welcome.next'.tr(),
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
        const Gap(12),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            'welcome.skip'.tr(),
            style: AppTextStyles.small.copyWith(
              color: AppColors.textSecondary,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
