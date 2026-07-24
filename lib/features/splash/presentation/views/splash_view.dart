import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../views_model/cubit/splash_cubit.dart';
import 'widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashCubit(),
      child: const Scaffold(
        body: SplashBody(),
      ),
    );
  }
}
