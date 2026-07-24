import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:tumaaneena/core/constants/app_colors.dart';

class IslamicPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primaryAccent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;

    const double cellSize = 64.0;
    const double halfCell = cellSize / 2;

    final int cols = (size.width / cellSize).ceil() + 1;
    final int rows = (size.height / cellSize).ceil() + 1;

    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < cols; col++) {
        final double cx = col * cellSize + (row.isOdd ? halfCell : 0);
        final double cy = row * cellSize;
        _drawStar(canvas, paint, Offset(cx, cy), halfCell * 0.55);
      }
    }
  }

  void _drawStar(Canvas canvas, Paint paint, Offset center, double radius) {
    const int points = 8;
    const double innerRatio = 0.42;
    final path = Path();

    for (int i = 0; i < points * 2; i++) {
      final double angle = (i * math.pi / points) - math.pi / 2;
      final double r = i.isEven ? radius : radius * innerRatio;
      final double x = center.dx + r * math.cos(angle);
      final double y = center.dy + r * math.sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}