// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/domain/user/user_repository.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/router.dart';
import 'package:health_plus/ui/components/primary_button.dart';

class AppAuthorizationScreen extends StatelessWidget {
  const AppAuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  S().name_app,
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    color: const Color(0xFF0066FF),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Assets.svg.welcomeImage.svg(),
                Text(
                  S().welcome_message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                PrimaryButton(
                  text: S().get_started,
                  onPressed: () async {
                    try {
                      final sdkAvailable =
                          await HealthService().checkSdkAvailable();
                      if (sdkAvailable) {
                        final authorized =
                            await HealthService().authorization();
                        if (authorized) {
                          final healthProvider = context.read<HealthCubit>();
                          final user = await UserRepository().getUser();

                          if (user == null) {
                            UserInputFormRoute().go(context);
                          } else {
                            await healthProvider.fetchData();
                            HomeRoute().go(context);
                          }
                        } else {
                          AppAuthorizationRoute().go(context);
                        }
                      } else {
                        AppAuthorizationRoute().go(context);
                      }
                    } catch (e, st) {
                      log('Error app loading', error: e, stackTrace: st);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
