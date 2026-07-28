import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:gap/gap.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'auth_primary_button.dart';

class ForgotSuccessState extends StatelessWidget {
  const ForgotSuccessState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primaryAccent, width: 2),
          ),
          child: const Icon(
            Icons.check_rounded,
            size: 40,
            color: AppColors.primaryAccent,
          ),
        ),
        const Gap(24),
        Text(
          'auth.check_email'.tr(),
          textAlign: TextAlign.center,
          style: AppTextStyles.heading2.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const Gap(8),
        Text(
          'auth.email_sent'.tr(),
          textAlign: TextAlign.center,
          style: AppTextStyles.small.copyWith(
            fontSize: 13,
            color: AppColors.textSecondary,
          ),
        ),
        const Gap(32),
        AuthPrimaryButton(
          label: 'auth.back_to_login'.tr(),
          onTap: () {
            Get.back();
          },
        ),
      ],
    );
  }
}
