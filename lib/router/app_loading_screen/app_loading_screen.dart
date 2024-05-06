import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/router/router.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';

import 'app_loading_cubit.dart';

class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          AppLoadingCubit(healthProvider: context.read<HealthCubit>()),
      child: BlocListener<AppLoadingCubit, AppLoadingState>(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: const Center(
            child: LoadingIndicator(),
          ),
        ),
        listener: (context, state) {
          if (state == AppLoadingState.success) {
            HomeRoute().go(context);
          } else if (state == AppLoadingState.SDKNotAvailable) {
            AppAuthorizationRoute().go(context);
          }
        },
      ),
    );
  }
}
