import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/features/life_metrics/life_metrics.dart';
import 'package:health_plus/features/life_metrics/models/life_metrics_model.dart';

part 'blood_pressure_state.dart';

class BloodPressureCubit extends Cubit<BloodPressureState> {
  BloodPressureCubit()
      : super(BloodPressureInitial(result: LifeMetrics().lastLifeMetrics)) {
    _subscription = LifeMetrics().stream.listen((event) {
      _lifeMetrics = event;
      emit(BloodPressureSuccess(result: _lifeMetrics));
    });
  }

  LifeMetricsModel? _lifeMetrics;

  StreamSubscription? _subscription;

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
