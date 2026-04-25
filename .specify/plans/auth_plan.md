# Plan: Auth

## Overview
Build Login, Sign Up, Forgot Password screens UI only.
No API calls, no cubit logic yet. Phase 1 — UI only.

---

## Step 1 — Shared Auth Widgets

### AuthInputField
- Deep emerald surface #163829
- Gold border on focus
- Rounded 16px
- Cairo Regular hint text muted cream
- White input text
- Suffix icon slot (for password toggle)

### AuthButton
- Full width, gold background #D4A843
- Dark text #163829 Cairo Bold
- Rounded 16px, height 56px

### SocialLoginRow
- Row of 3 cards: Google, Facebook, Apple
- Each: deep emerald rounded 12px card
- Brand icon centered (font_awesome_flutter)
- Equal width, spaced evenly
- Gold divider with أو text above row

### Files
lib/features/auth/presentation/views/widgets/auth_input_field.dart
lib/features/auth/presentation/views/widgets/auth_button.dart
lib/features/auth/presentation/views/widgets/social_login_row.dart
lib/features/auth/presentation/views/widgets/auth_divider.dart
lib/features/auth/presentation/views/widgets/password_field.dart

---

## Step 2 — Login Screen

### Layout (scrollable, top to bottom)
- Background: #1B4332 + center radial glow
- Back arrow top left gold
- Small gold crescent logo centered top
- Title: مرحباً بعودتك Cairo Bold warm white large
- Email AuthInputField
- Password PasswordField (show/hide toggle gold icon)
- نسيت كلمة المرور؟ right-aligned gold text link
- تسجيل الدخول AuthButton
- AuthDivider with أو
- SocialLoginRow
- Bottom row: ليس لديك حساب؟ + gold سجّل الآن link

### Files
lib/features/auth/presentation/views/login_view.dart
lib/features/auth/presentation/views/widgets/login_body.dart

---

## Step 3 — Sign Up Screen

### Layout (scrollable, top to bottom)
- Background: #1B4332 + center radial glow
- Back arrow top left gold
- Title: إنشاء حساب Cairo Bold warm white large
- Full Name AuthInputField
- Email AuthInputField
- Password PasswordField
- Confirm Password PasswordField
- إنشاء حساب AuthButton
- AuthDivider with أو
- SocialLoginRow
- Bottom: لديك حساب؟ + gold تسجيل الدخول link
- Terms & Privacy small muted cream text bottom

### Files
lib/features/auth/presentation/views/sign_up_view.dart
lib/features/auth/presentation/views/widgets/sign_up_body.dart

---

## Step 4 — Forgot Password Screen

### Layout
- Background: #1B4332
- Back arrow top left gold
- Title: نسيت كلمة المرور Cairo Bold warm white
- Subtitle: أدخل بريدك وسنرسل لك رابط الاستعادة muted cream
- Email AuthInputField
- إرسال الرابط AuthButton

### Success State (same screen, toggle visibility)
- Gold checkmark icon in gold circle
- تحقق من بريدك warm white bold
- تم إرسال رابط الاستعادة muted cream small
- العودة لتسجيل الدخول gold text link

### Files
lib/features/auth/presentation/views/forgot_password_view.dart
lib/features/auth/presentation/views/widgets/forgot_password_body.dart
lib/features/auth/presentation/views/widgets/forgot_success_state.dart

---

## Step 5 — Data Layer Placeholders

### UserModel
- id, fullName, email, token, profileImage

### AuthRepo (abstract)
- Future<Either<Failure, UserModel>> login(email, password)
- Future<Either<Failure, UserModel>> signUp(name, email, password)
- Future<Either<Failure, void>> forgotPassword(email)

### AuthRepoImpl (placeholder)
- All methods return placeholder Right() responses

### Files
lib/features/auth/data/models/user_model.dart
lib/features/auth/data/repos/auth_repo.dart
lib/features/auth/data/repos/auth_repo_impl.dart

---

## Step 6 — Cubit Placeholder

### States
- AuthInitial
- AuthLoading
- AuthSuccess(user: UserModel)
- AuthFailure(message: String)

### Methods (empty for now)
- login()
- signUp()
- forgotPassword()

### Files
lib/features/auth/presentation/views_model/cubit/auth_cubit.dart
lib/features/auth/presentation/views_model/cubit/auth_state.dart

---

## Localization Keys
welcome.login → تسجيل الدخول / Login
auth.sign_up → إنشاء حساب / Sign Up
auth.full_name → الاسم الكامل / Full Name
auth.email → البريد الإلكتروني / Email
auth.password → كلمة المرور / Password
auth.confirm_password → تأكيد كلمة المرور / Confirm Password
auth.forgot_password → نسيت كلمة المرور؟ / Forgot Password?
auth.no_account → ليس لديك حساب؟ / Don't have an account?
auth.have_account → لديك حساب؟ / Already have an account?
auth.register_now → سجّل الآن / Register Now
auth.send_reset → إرسال الرابط / Send Reset Link
auth.check_email → تحقق من بريدك / Check Your Email
auth.reset_sent → تم إرسال رابط الاستعادة / Reset link sent
auth.back_to_login → العودة لتسجيل الدخول / Back to Login
auth.or → أو / or
auth.welcome_back → مرحباً بعودتك / Welcome Back
auth.terms → بإنشاء حساب فأنت توافق على / By signing up you agree to our
auth.privacy → سياسة الخصوصية / Privacy Policy
auth.terms_of_use → شروط الاستخدام / Terms of Use

---

## Files To Create
lib/features/auth/data/models/user_model.dart
lib/features/auth/data/repos/auth_repo.dart
lib/features/auth/data/repos/auth_repo_impl.dart
lib/features/auth/presentation/views/login_view.dart
lib/features/auth/presentation/views/sign_up_view.dart
lib/features/auth/presentation/views/forgot_password_view.dart
lib/features/auth/presentation/views/widgets/login_body.dart
lib/features/auth/presentation/views/widgets/sign_up_body.dart
lib/features/auth/presentation/views/widgets/forgot_password_body.dart
lib/features/auth/presentation/views/widgets/forgot_success_state.dart
lib/features/auth/presentation/views/widgets/auth_input_field.dart
lib/features/auth/presentation/views/widgets/auth_button.dart
lib/features/auth/presentation/views/widgets/auth_divider.dart
lib/features/auth/presentation/views/widgets/password_field.dart
lib/features/auth/presentation/views/widgets/social_login_row.dart
lib/features/auth/presentation/views_model/cubit/auth_cubit.dart
lib/features/auth/presentation/views_model/cubit/auth_state.dart
