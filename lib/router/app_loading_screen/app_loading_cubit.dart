// ignore_for_file: constant_identifier_names

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';

enum AppLoadingState {
  initial,
  waiting,
  success,
  SDKNotAvailable,
  error,
}

class AppLoadingCubit extends Cubit<AppLoadingState> {
  AppLoadingCubit({required HealthCubit healthProvider})
      : _healthProvider = healthProvider,
        super(AppLoadingState.initial) {
    _loading();
  }

  final HealthCubit _healthProvider;

  void _loading() async {
    emit(AppLoadingState.waiting);
    try {
      final sdkAvailable = await HealthService().checkSdkAvailable();
      if (sdkAvailable) {
        final authorized = await HealthService().authorization();
        if (authorized) {
          await _healthProvider.fetchData();
          emit(AppLoadingState.success);
        } else {
          emit(AppLoadingState.SDKNotAvailable);
        }
      } else {
        emit(AppLoadingState.SDKNotAvailable);
      }
    } catch (e, st) {
      log('Error app loading', error: e, stackTrace: st);
      emit(AppLoadingState.error);
    }
  }
}
