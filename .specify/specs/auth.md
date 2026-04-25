# Feature: Auth

## Screens
1. LoginView
2. SignUpView
3. ForgotPasswordView

## Shared UI Elements
- Emerald background #1B4332 with center radial glow
- Input fields: deep emerald surface #163829, gold border on focus, rounded 16px
- Primary button: full width, gold background, dark text
- Social row: Google, Facebook, Apple on deep emerald rounded cards
- All strings via easy_localization

## Login Screen
### UI
- Back arrow top left (gold)
- Small gold crescent icon top center
- Title مرحباً بعودتك Cairo Bold warm white large
- Email input field
- Password input field with show/hide toggle (gold icon)
- نسيت كلمة المرور؟ right-aligned gold text link
- تسجيل الدخول full width gold button
- Gold divider with أو center
- Social login row: Google, Facebook, Apple
- Bottom: ليس لديك حساب؟ سجّل الآن with gold link

### Logic (Phase 2)
- Validate fields
- AuthCubit.login(email, password)
- Success → Get.offAll MainNavigation
- Failure → AnimatedSnackBar error
- Forgot Password link → Get.to ForgotPasswordView
- Sign Up link → Get.to SignUpView

## Sign Up Screen
### UI
- Back arrow top left (gold)
- Title إنشاء حساب Cairo Bold warm white
- Full Name input
- Email input
- Password input with show/hide
- Confirm Password input with show/hide
- إنشاء حساب full width gold button
- Gold divider with أو center
- Social login row: Google, Facebook, Apple
- Bottom: لديك حساب؟ تسجيل الدخول with gold link
- Terms & Privacy small text at bottom

### Logic (Phase 2)
- Validate all fields
- Password match check
- AuthCubit.signUp(name, email, password)
- Success → Get.offAll MainNavigation
- Failure → AnimatedSnackBar error

## Forgot Password Screen
### UI
- Back arrow top left (gold)
- Title نسيت كلمة المرور Cairo Bold warm white
- Subtitle: أدخل بريدك وسنرسل لك رابط الاستعادة muted cream
- Email input field
- إرسال الرابط full width gold button
- Success state (second view):
  - Gold checkmark in circle
  - تحقق من بريدك warm white
  - Return to login link

### Logic (Phase 2)
- AuthCubit.forgotPassword(email)
- Success → show success state
- Failure → AnimatedSnackBar error

## Cubit
### States
- AuthInitial
- AuthLoading
- AuthSuccess(user: UserModel)
- AuthFailure(message: String)

## Files
- lib/features/auth/data/models/user_model.dart
- lib/features/auth/data/repos/auth_repo.dart
- lib/features/auth/data/repos/auth_repo_impl.dart
- lib/features/auth/presentation/views/login_view.dart
- lib/features/auth/presentation/views/sign_up_view.dart
- lib/features/auth/presentation/views/forgot_password_view.dart
- lib/features/auth/presentation/views/widgets/auth_input_field.dart
- lib/features/auth/presentation/views/widgets/social_login_row.dart
- lib/features/auth/presentation/views/widgets/auth_button.dart
- lib/features/auth/presentation/views_model/cubit/auth_cubit.dart
- lib/features/auth/presentation/views_model/cubit/auth_state.dart
