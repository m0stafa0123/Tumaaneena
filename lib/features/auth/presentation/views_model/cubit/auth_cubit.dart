import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> login() async {}

  Future<void> signUp() async {}

  Future<void> forgotPassword() async {}
}