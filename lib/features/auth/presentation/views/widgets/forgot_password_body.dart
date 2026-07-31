import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:gap/gap.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/form_validators.dart';
import 'auth_app_bar.dart';
import 'auth_background.dart';
import 'auth_input_field.dart';
import 'auth_primary_button.dart';
import 'forgot_success_state.dart';

class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({super.key});

  @override
  State<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends State<ForgotPasswordBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  bool _emailSent = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AuthBackground(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: _emailSent ? _buildSuccess() : _buildForm(),
          ),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(20),
            AuthAppBar(title: 'auth.forgot_password'.tr(), onBackTap: Get.back),
            const Gap(48),
            Text(
              'auth.forgot_password'.tr(),
              textAlign: TextAlign.center,
              style: AppTextStyles.heading2.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const Gap(8),
            Text(
              'auth.forgot_password_subtitle'.tr(),
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
              validator: (value) => FormValidators.email(value),
              prefixIcon: const Icon(
                Icons.mail_outline_rounded,
                color: AppColors.textSecondary,
                size: 20,
              ),
            ),
            const Gap(24),
            AuthPrimaryButton(
              label: 'auth.send_reset'.tr(),
              onTap: () {
                if (_formKey.currentState?.validate() ?? false) {
                  setState(() {
                    _emailSent = true;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSuccess() {
    return const Center(child: ForgotSuccessState());
  }
}
