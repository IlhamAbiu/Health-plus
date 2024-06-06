import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/features/resting_pulse/models/resting_pulse_model.dart';
import 'package:health_plus/features/resting_pulse/resting_pulse.dart';

part 'resting_pulse_state.dart';

class RestingPulseCubit extends Cubit<RestingPulseState> {
  RestingPulseCubit()
      : super(RestingPulseInitial(
          result: RestingPulse().lastRestingPulse,
        )) {
    _restingPulseModel = RestingPulse().lastRestingPulse;
    _subscription = RestingPulse().stream.listen((event) {
      _restingPulseModel = event;
      emit(RestingPulseSuccess(result: _restingPulseModel));
    });
    _getRestingPulse();
  }

  RestingPulseModel? _restingPulseModel;

  StreamSubscription? _subscription;

  Future<void> _getRestingPulse() async {
    try {
      emit(RestingPulseWaiting(result: _restingPulseModel));
      await RestingPulse().updateData();
    } catch (_) {
      emit(RestingPulseError(result: _restingPulseModel));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
