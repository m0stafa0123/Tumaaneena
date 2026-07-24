import 'package:flutter/material.dart';
import 'package:tumaaneena/features/splash/presentation/views/widgets/Islamic_pattern_painter.dart';

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

