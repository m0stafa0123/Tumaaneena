import 'package:flutter/material.dart';
import 'package:tumaaneena/features/splash/presentation/views/widgets/mos.dart';

class GeometricOverlay extends StatelessWidget {
  const GeometricOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Opacity(
        opacity: 0.1,
        child: CustomPaint(painter: IslamicPatternPainter()),
      ),
    );
  }
}

/// Paints a repeating 8-pointed star grid at very low opacity.
