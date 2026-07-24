import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  // ── Phase 2: add navigation logic here ──────────────────────────────────
  // Future<void> checkAuthAndNavigate() async { ... }
}
