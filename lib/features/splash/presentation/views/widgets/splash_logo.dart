import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets_data.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // ── Crescent Moon ──────────────────────────────────────────────────
          SvgPicture.asset(
            AssetsData.moonIcon,
            height: 96,
            fit: BoxFit.contain,
          ),

          // ── Mosque Silhouette ─────────────────────────────────────────────
          Positioned(
            bottom: 12,
            left: 22,
            child: SvgPicture.asset(
              AssetsData.mosqueIcon,
              width: 50,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
