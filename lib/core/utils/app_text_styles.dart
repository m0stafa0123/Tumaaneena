import 'dart:ui';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  // ── Display ────────────────────────────────────────────────────────────────
  static TextStyle get display => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(42),
        fontWeight: FontWeight.w800,
        color: const Color(0xFFF5F0E8),
      );

  static TextStyle get heading1 => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(32),
        fontWeight: FontWeight.w700,
        color: const Color(0xFFF5F0E8),
      );

  static TextStyle get heading2 => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(26),
        fontWeight: FontWeight.w700,
        color: const Color(0xFFF5F0E8),
      );

  static TextStyle get heading3 => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(22),
        fontWeight: FontWeight.w700,
        color: const Color(0xFFF5F0E8),
      );

  // ── Body ───────────────────────────────────────────────────────────────────
  static TextStyle get body1 => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(18),
        fontWeight: FontWeight.w600,
        color: const Color(0xFFF5F0E8),
      );

  static TextStyle get body2 => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(16),
        fontWeight: FontWeight.normal,
        color: const Color(0xFFF5F0E8),
      );

  static TextStyle get body2Bold => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(16),
        fontWeight: FontWeight.w700,
        color: const Color(0xFFF5F0E8),
      );

  // ── Small ──────────────────────────────────────────────────────────────────
  static TextStyle get small => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(14),
        fontWeight: FontWeight.normal,
        color: const Color(0xFFA89880),
      );

  static TextStyle get smallBold => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(14),
        fontWeight: FontWeight.w700,
        color: const Color(0xFFA89880),
      );

  static TextStyle get caption => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(12),
        fontWeight: FontWeight.normal,
        color: const Color(0xFFA89880),
      );

  static TextStyle get captionBold => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(12),
        fontWeight: FontWeight.w700,
        color: const Color(0xFFA89880),
      );

  // ── Gold variants ──────────────────────────────────────────────────────────
  static TextStyle get goldHeading => heading2.copyWith(
        color: const Color(0xFFD4A843),
      );

  static TextStyle get goldSmall => small.copyWith(
        color: const Color(0xFFD4A843),
      );

  static TextStyle get tagline => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(12),
        fontWeight: FontWeight.w400,
        color: const Color(0xFFA89880),
        letterSpacing: 2.5,
      );

  // ── Arabic Quran/Hadith ────────────────────────────────────────────────────
  static TextStyle get arabicLarge => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(22),
        fontWeight: FontWeight.w600,
        color: const Color(0xFFF5F0E8),
        height: 2.0,
      );

  static TextStyle get arabicMedium => TextStyle(
        fontFamily: 'Cairo',
        fontSize: _r(18),
        fontWeight: FontWeight.w600,
        color: const Color(0xFFF5F0E8),
        height: 2.0,
      );

  // ── Responsive scaler ─────────────────────────────────────────────────────
  static double _r(double fontSize) {
    final double scaler = _scaler();
    final double responsive = fontSize * scaler;
    return responsive.clamp(fontSize * 0.8, fontSize * 1.2);
  }

  static double _scaler() {
    final dispatcher = PlatformDispatcher.instance;
    final physicalWidth = dispatcher.views.first.physicalSize.width;
    final devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    final width = physicalWidth / devicePixelRatio;
    if (width < 800) return width / 650;
    if (width < 1300) return width / 1000;
    return width / 1850;
  }
}