import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/services/calculate_service/models/step_trends_response/step_trends_response.dart';
import 'package:health_plus/features/step_trends/step_trends.dart';

class StepsCubit extends Cubit<StepTrendsResponse?> {
  StepsCubit() : super(StepTrends().lastSleepMetrics) {
    _subscription = StepTrends().stream.listen((event) {
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
