import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/features/sleep_metrics/models/sleep_metrics_models.dart';
import 'package:health_plus/features/sleep_metrics/sleep_metrics.dart';

class SleepMetricsCubit extends Cubit<SleepMetricsModels?> {
  SleepMetricsCubit()
      : super(
          SleepMetrics().lastSleepMetrics,
        ) {
    _subscription = SleepMetrics().stream.listen((event) {
      emit(event);
    });
  }

  StreamSubscription? _subscription;

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
