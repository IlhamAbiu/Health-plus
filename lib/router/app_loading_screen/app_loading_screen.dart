import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heath_plus/router/router.dart';
import 'package:heath_plus/ui/components/loading_indicator.dart';

import 'app_loading_cubit.dart';

class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppLoadingCubit(),
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
