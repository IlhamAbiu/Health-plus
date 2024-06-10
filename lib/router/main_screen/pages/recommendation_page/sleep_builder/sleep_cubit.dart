import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/services/generate_text/models/sleep_response/sleep_response.dart';

import 'package:health_plus/features/sleep/sleep.dart';

class SleepCubit extends Cubit<SleepResponse?> {
  SleepCubit() : super(Sleep().sleepText) {
    _subscription = Sleep().stream.listen((value) {
      emit(value);
    });
  }

  StreamSubscription? _subscription;

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
