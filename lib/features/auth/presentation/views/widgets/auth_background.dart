import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.0, -0.2),
            radius: 0.85,
            colors: [AppColors.gradientCenter, AppColors.backgroundColor],
            stops: [0.0, 1.0],
          ),
        ),
      ),
    );
  }
}
