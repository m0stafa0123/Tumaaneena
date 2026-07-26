import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/assets_data.dart';

class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ── 1. Radial gradient background ─────────────────────────────────
        Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0.0, -0.2),
              radius: 0.85,
              colors: [
                AppColors.gradientCenter,
                AppColors.backgroundColor,
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        
        // ── 2. Subtle mosque/minaret silhouette at bottom ─────────────────
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Opacity(
            opacity: 0.08,
            child: Image.asset(
              AssetsData.backgroundPattern,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return CustomPaint(
                  size: const Size(double.infinity, 300),
                  painter: _ArchPainter(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _ArchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();
    
    // Draw a simple center arch
    path.moveTo(size.width * 0.3, size.height);
    path.lineTo(size.width * 0.3, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.2, size.width * 0.7, size.height * 0.5);
    path.lineTo(size.width * 0.7, size.height);
    path.close();

    // Draw left minaret
    path.moveTo(size.width * 0.1, size.height);
    path.lineTo(size.width * 0.1, size.height * 0.4);
    path.lineTo(size.width * 0.15, size.height * 0.3);
    path.lineTo(size.width * 0.2, size.height * 0.4);
    path.lineTo(size.width * 0.2, size.height);
    path.close();

    // Draw right minaret
    path.moveTo(size.width * 0.8, size.height);
    path.lineTo(size.width * 0.8, size.height * 0.4);
    path.lineTo(size.width * 0.85, size.height * 0.3);
    path.lineTo(size.width * 0.9, size.height * 0.4);
    path.lineTo(size.width * 0.9, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
