import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key, required this.title, required this.onBackTap});

  final String title;
  final VoidCallback onBackTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 48,
          child: IconButton(
            onPressed: onBackTap,
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.primaryAccent,
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: title.trim().isEmpty
                ? const SizedBox.shrink()
                : Text(
                    title,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.heading3.copyWith(
                      color: AppColors.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
        const SizedBox(width: 48),
      ],
    );
  }
}
