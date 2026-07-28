import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:gap/gap.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../forgot_password_view.dart';
import '../sign_up_view.dart';
import 'auth_app_bar.dart';
import 'auth_background.dart';
import 'auth_divider.dart';
import 'auth_input_field.dart';
import 'auth_primary_button.dart';
import 'password_field.dart';
import 'social_login_row.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AuthBackground(),
        SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Gap(20),
                  AuthAppBar(title: '', onBackTap: Get.back),
                  const Gap(32),
                  const Center(
                    child: Icon(
                      Icons.nightlight_round,
                      size: 52,
                      color: AppColors.primaryAccent,
                    ),
                  ),
                  const Gap(8),
                  Text(
                    'auth.welcome_back'.tr(),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.heading2.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const Gap(8),
                  Text(
                    'auth.login_subtitle'.tr(),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.small.copyWith(
                      fontSize: 13,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const Gap(32),
                  Text(
                    'auth.email'.tr(),
                    style: AppTextStyles.smallBold.copyWith(
                      color: AppColors.textPrimary,
                      fontSize: 13,
                    ),
                  ),
                  const Gap(6),
                  AuthInputField(
                    hintText: 'auth.email_hint'.tr(),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: const Icon(
                      Icons.mail_outline_rounded,
                      color: AppColors.textSecondary,
                      size: 20,
                    ),
                  ),
                  const Gap(16),
                  Text(
                    'auth.password'.tr(),
                    style: AppTextStyles.smallBold.copyWith(
                      color: AppColors.textPrimary,
                      fontSize: 13,
                    ),
                  ),
                  const Gap(6),
                  PasswordField(
                    controller: _passwordController,
                    hintText: 'auth.password_hint'.tr(),
                  ),
                  const Gap(8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => const ForgotPasswordView());
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        'auth.forgot_password_link'.tr(),
                        style: AppTextStyles.small.copyWith(
                          color: AppColors.primaryAccent,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  const Gap(24),
                  AuthPrimaryButton(label: 'auth.login'.tr(), onTap: () {}),
                  const Gap(20),
                  const AuthDivider(),
                  const Gap(16),
                  const SocialLoginRow(),
                  const Gap(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'auth.no_account'.tr(),
                        style: AppTextStyles.small.copyWith(
                          color: AppColors.textSecondary,
                          fontSize: 13,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => const SignUpView());
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'auth.sign_up'.tr(),
                          style: AppTextStyles.smallBold.copyWith(
                            color: AppColors.primaryAccent,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(24),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
