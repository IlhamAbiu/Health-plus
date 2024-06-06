import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/features/sleep_metrics/models/sleep_metrics_models.dart';
import 'package:health_plus/features/sleep_metrics/sleep_metrics.dart';

part 'sleep_metrics_state.dart';

class SleepMetricsCubit extends Cubit<SleepMetricsState> {
  SleepMetricsCubit()
      : super(
          SleepMetricsInitial(
            result: SleepMetrics().lastSleepMetrics,
          ),
        ) {
    _lastSleepMetrics = SleepMetrics().lastSleepMetrics;
    _subscription = SleepMetrics().stream.listen((event) {
      _lastSleepMetrics = event;
      emit(SleepMetricsSuccess(result: event));
    });
    _getSleepMetrics();
  }

  SleepMetricsModels? _lastSleepMetrics;

  StreamSubscription? _subscription;

  Future<void> _getSleepMetrics() async {
    try {
      emit(SleepMetricsWaiting(result: _lastSleepMetrics));
      await SleepMetrics().updateData();
    } catch (_) {
      emit(
        SleepMetricsError(result: _lastSleepMetrics),
      );
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
