import 'package:flutter/material.dart';
import 'welcome_background.dart';
import 'welcome_buttons_section.dart';
import 'welcome_logo.dart';
import 'welcome_title_section.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const WelcomeBackground(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const Spacer(flex: 2),
                const WelcomeLogo(),
                const Spacer(flex: 3),
                const WelcomeTitleSection(),
                const Spacer(flex: 4),
                const WelcomeButtonsSection(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
