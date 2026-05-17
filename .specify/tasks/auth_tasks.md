# Tasks: Auth

## TASK-001 — Shared Auth Widgets
- [ ] Create lib/features/auth/presentation/views/widgets/auth_input_field.dart
      Custom TextFormField:
      - Fill color #163829
      - Gold border on focus OutlineInputBorder
      - Rounded 16px
      - Hint text muted cream Cairo
      - White input text Cairo
      - Accepts: hintText, controller, validator, keyboardType
- [ ] Create lib/features/auth/presentation/views/widgets/password_field.dart
      AuthInputField + StatefulWidget show/hide toggle
      Suffix: IconButton gold visibility icon
- [ ] Create lib/features/auth/presentation/views/widgets/auth_button.dart
      ElevatedButton full width height 56
      Gold background #D4A843 dark text #163829
      Rounded 16px Cairo Bold
      Accepts: label, onTap
- [ ] Create lib/features/auth/presentation/views/widgets/auth_divider.dart
      Row: Divider + أو text muted cream + Divider
- [ ] Create lib/features/auth/presentation/views/widgets/social_login_row.dart
      Row of 3 equal cards Google Facebook Apple
      Deep emerald #163829 rounded 12px
      font_awesome_flutter brand icons
      onTap empty for now

## TASK-002 — Login Screen
- [ ] Create lib/features/auth/presentation/views/login_view.dart
      Scaffold + BlocProvider AuthCubit
- [ ] Create lib/features/auth/presentation/views/widgets/login_body.dart
      SingleChildScrollView full layout:
      - Background #1B4332 + radial glow
      - Back arrow gold top left
      - Gold crescent logo placeholder top center
      - Title مرحباً بعودتك Cairo Bold warm white size 28
      - Email AuthInputField
      - Password PasswordField
      - نسيت كلمة المرور؟ right-aligned gold TextButton
      - تسجيل الدخول AuthButton
      - AuthDivider
      - SocialLoginRow
      - Bottom row: text + gold link سجّل الآن

## TASK-003 — Sign Up Screen
- [ ] Create lib/features/auth/presentation/views/sign_up_view.dart
- [ ] Create lib/features/auth/presentation/views/widgets/sign_up_body.dart
      SingleChildScrollView full layout:
      - Background #1B4332 + radial glow
      - Back arrow gold top left
      - Title إنشاء حساب Cairo Bold warm white size 28
      - Full Name AuthInputField
      - Email AuthInputField
      - Password PasswordField
      - Confirm Password PasswordField
      - إنشاء حساب AuthButton
      - AuthDivider
      - SocialLoginRow
      - Bottom: text + gold link تسجيل الدخول
      - Terms muted cream small bottom

## TASK-004 — Forgot Password Screen
- [ ] Create lib/features/auth/presentation/views/forgot_password_view.dart
- [ ] Create lib/features/auth/presentation/views/widgets/forgot_password_body.dart
      Layout:
      - Background #1B4332
      - Back arrow gold
      - Title نسيت كلمة المرور Cairo Bold warm white
      - Subtitle muted cream
      - Email AuthInputField
      - إرسال الرابط AuthButton
- [ ] Create lib/features/auth/presentation/views/widgets/forgot_success_state.dart
      Shown after send (toggle with bool in StatefulWidget):
      - Gold checkmark Icon in gold circle Container
      - تحقق من بريدك warm white bold
      - تم إرسال الرابط muted cream small
      - العودة لتسجيل الدخول gold TextButton

## TASK-005 — Data Layer Placeholders
- [ ] Create lib/features/auth/data/models/user_model.dart
      Fields: id, fullName, email, token, profileImage
      fromJson + toJson
- [ ] Create lib/features/auth/data/repos/auth_repo.dart
      Abstract class with 3 method signatures
- [ ] Create lib/features/auth/data/repos/auth_repo_impl.dart
      Placeholder implementations returning Right() dummy data

## TASK-006 — Cubit Placeholder
- [ ] Create lib/features/auth/presentation/views_model/cubit/auth_cubit.dart
      Empty methods: login, signUp, forgotPassword
- [ ] Create lib/features/auth/presentation/views_model/cubit/auth_state.dart
      States: AuthInitial, AuthLoading, AuthSuccess, AuthFailure

## TASK-007 — Translation Keys
- [ ] Add all auth keys to ar.json + en.json
      auth.welcome_back, auth.sign_up, auth.login,
      auth.full_name, auth.email, auth.password,
      auth.confirm_password, auth.forgot_password,
      auth.send_reset, auth.check_email, auth.or,
      auth.no_account, auth.have_account,
      auth.register_now, auth.back_to_login, auth.terms  
