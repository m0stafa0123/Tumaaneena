import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0.0, -0.2),
          radius: 0.85,
          colors: [
            AppColors.gradientCenter,  // slightly lighter center (0xFF1E5C3A)
            AppColors.backgroundColor, // very dark edges (0xFF0D2818)
          ],
          stops: [0.0, 1.0],
        ),
      ),
    );
  }
}
