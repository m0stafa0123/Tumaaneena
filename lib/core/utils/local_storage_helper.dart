/// Local storage helper.
///
/// Phase 1 — placeholder only, no logic implemented.
/// Phase 2 — implement:
///   - JWT token  → flutter_secure_storage
///   - User prefs (theme, language, onboarding seen) → shared_preferences
class LocalStorageHelper {
  // ── Token ────────────────────────────────────────────────────────────────
  /// Returns true if a valid auth token exists in secure storage.
  Future<bool> hasToken() async {
    // TODO(phase2): read from flutter_secure_storage
    return false;
  }

  Future<void> saveToken(String token) async {
    // TODO(phase2): write to flutter_secure_storage
  }

  Future<void> clearToken() async {
    // TODO(phase2): delete from flutter_secure_storage
  }

  // ── Onboarding ───────────────────────────────────────────────────────────
  /// Returns true if the user has already seen the onboarding flow.
  Future<bool> hasSeenOnboarding() async {
    // TODO(phase2): read from shared_preferences
    return false;
  }

  Future<void> setOnboardingSeen() async {
    // TODO(phase2): write to shared_preferences
  }

  // ── Guest Mode ───────────────────────────────────────────────────────────
  bool isGuest = true;
}
