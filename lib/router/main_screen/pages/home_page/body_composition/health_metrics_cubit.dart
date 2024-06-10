import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/services/calculate_service/models/health_metrics_response/health_metrics_response.dart';
import 'package:health_plus/features/health_metrics/health_metrics.dart';

class HealthMetricsCubit extends Cubit<HealthMetricsResponse?> {
  HealthMetricsCubit()
      : super(
          HealthMetrics().lastLifeMetrics,
        ) {
    _subscription = HealthMetrics().stream.listen((event) {
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
