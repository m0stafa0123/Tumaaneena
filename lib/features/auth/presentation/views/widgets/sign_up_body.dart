import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:gap/gap.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/form_validators.dart';
import '../login_view.dart';
import 'auth_app_bar.dart';
import 'auth_background.dart';
import 'auth_divider.dart';
import 'auth_input_field.dart';
import 'auth_primary_button.dart';
import 'password_field.dart';
import 'social_login_row.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Gap(16),
                    AuthAppBar(title: 'auth.sign_up'.tr(), onBackTap: Get.back),
                    const Gap(16),
                    Center(
                      child: Image.asset(
                        AssetsData.tasbeeh,
                        width: 56,
                        height: 56,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      'welcome.app_name'.tr(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.heading3.copyWith(
                        color: AppColors.primaryAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      'auth.sign_up_subtitle'.tr(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                    const Gap(24),
                    Text(
                      'auth.full_name'.tr(),
                      style: AppTextStyles.smallBold.copyWith(
                        color: AppColors.textPrimary,
                        fontSize: 13,
                      ),
                    ),
                    const Gap(6),
                    AuthInputField(
                      hintText: 'auth.full_name_hint'.tr(),
                      controller: _fullNameController,
                      validator: (value) => FormValidators.requiredField(
                        value,
                        message: 'Full name is required',
                      ),
                      prefixIcon: const Icon(
                        Icons.person_outline_rounded,
                        color: AppColors.textSecondary,
                        size: 20,
                      ),
                    ),
                    const Gap(12),
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
                      validator: (value) => FormValidators.email(value),
                      prefixIcon: const Icon(
                        Icons.mail_outline_rounded,
                        color: AppColors.textSecondary,
                        size: 20,
                      ),
                    ),
                    const Gap(12),
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
                      validator: (value) => FormValidators.password(value),
                    ),
                    const Gap(12),
                    Text(
                      'auth.confirm_password'.tr(),
                      style: AppTextStyles.smallBold.copyWith(
                        color: AppColors.textPrimary,
                        fontSize: 13,
                      ),
                    ),
                    const Gap(6),
                    PasswordField(
                      controller: _confirmPasswordController,
                      hintText: 'auth.confirm_password_hint'.tr(),
                      validator: (value) => FormValidators.confirmPassword(
                        value,
                        password: _passwordController.text,
                      ),
                    ),
                    const Gap(24),
                    AuthPrimaryButton(
                      label: 'auth.sign_up'.tr(),
                      onTap: () {
                        _formKey.currentState?.validate();
                      },
                    ),
                    const Gap(20),
                    const AuthDivider(),
                    const Gap(16),
                    const SocialLoginRow(),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'auth.have_account'.tr(),
                          style: AppTextStyles.small.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(() => const LoginView());
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            'welcome.login'.tr(),
                            style: AppTextStyles.smallBold.copyWith(
                              color: AppColors.primaryAccent,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(12),
                    Text(
                      'auth.terms'.tr(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                    const Gap(32),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
