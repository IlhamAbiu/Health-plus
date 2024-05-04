// ignore_for_file: constant_identifier_names

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heath_plus/domain/services/health_service/health_service.dart';

enum AppLoadingState {
  initial,
  waiting,
  success,
  SDKNotAvailable,
  error,
}

class AppLoadingCubit extends Cubit<AppLoadingState> {
  AppLoadingCubit() : super(AppLoadingState.initial) {
    _loading();
  }

  void _loading() async {
    emit(AppLoadingState.waiting);
    try {
      final sdkAvailable = await HealthService().checkSdkAvailable();
      if (sdkAvailable) {
        final authorized = await HealthService().authorization();
        if (authorized) {
          await HealthService().fetchData();
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
