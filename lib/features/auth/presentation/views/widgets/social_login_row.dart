import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/constants/app_colors.dart';

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: _SocialCard(
              icon: FontAwesomeIcons.facebookF,
              iconColor: AppColors.facebookBlue,
            ),
          ),
        ),
        const Gap(12),
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: _SocialCard(
              icon: FontAwesomeIcons.google,
              iconColor: AppColors.googleRed,
            ),
          ),
        ),
        const Gap(12),
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: _SocialCard(
              icon: FontAwesomeIcons.apple,
              iconColor: AppColors.appleWhite,
            ),
          ),
        ),
      ],
    );
  }
}

class _SocialCard extends StatelessWidget {
  const _SocialCard({
    required this.icon,
    required this.iconColor,
  });

  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: FaIcon(
        icon,
        color: iconColor,
        size: 20,
      ),
    );
  }
}