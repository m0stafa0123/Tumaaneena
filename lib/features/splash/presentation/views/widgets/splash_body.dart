import 'package:flutter/material.dart';

import 'geometric_overlay.dart';
import 'splash_background.dart';
import 'splash_bottom_caption.dart';
import 'splash_content.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _logoFadeAnimation;
  late final Animation<double> _logoScaleAnimation;
  late final Animation<double> _nameFadeAnimation;
  late final Animation<Offset> _nameSlideAnimation;
  late final Animation<double> _taglineFadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    // Logo animation: Fade + Scale (0.7 -> 1.0) starting at 0ms
    _logoFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );
    _logoScaleAnimation = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );

    // App name animation: Fade + Slide (offset (0, 0.3) -> (0, 0)) starting at 200ms
    _nameFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(200 / 1200, 0.8, curve: Curves.easeOut),
      ),
    );
    _nameSlideAnimation =
        Tween<Offset>(begin: const Offset(0.0, 0.3), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(200 / 1200, 0.8, curve: Curves.easeOut),
          ),
        );

    // Tagline animation: Fade starting at 400ms
    _taglineFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(400 / 1200, 1.0, curve: Curves.easeOut),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox.expand(
      child: Stack(
        children: [
          // ── 1. Background with radial glow ─────────────────────────────
          SplashBackground(size: size),

          // ── 2. Islamic geometric pattern overlay ───────────────────────
          const GeometricOverlay(),

          // ── 3. Main content column ─────────────────────────────────────
          SplashContent(
            logoFadeAnimation: _logoFadeAnimation,
            logoScaleAnimation: _logoScaleAnimation,
            nameFadeAnimation: _nameFadeAnimation,
            nameSlideAnimation: _nameSlideAnimation,
            taglineFadeAnimation: _taglineFadeAnimation,
          ),

          // ── 4. Bottom caption (EST. 1446 AH) ──────────────────────────
          const SplashBottomCaption(),
        ],
      ),
    );
  }
}
