import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tumaaneena/core/utils/app_text_styles.dart';

class SplashBottomCaption extends StatelessWidget {
  const SplashBottomCaption({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 0,
      right: 0,
      child: Text(
        'splash.est'.tr(),
        textAlign: TextAlign.center,
        style: AppTextStyles.small,
      ),
    );
  }
}
