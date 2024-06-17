import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/services/generate_text/models/life_indicators_response/life_indicators_response.dart';
import 'package:health_plus/features/life_indicators/life_indicators.dart';

class LifeIndicatorsCubit extends Cubit<LifeIndicatorsResponse?> {
  LifeIndicatorsCubit() : super(LifeIndicators().lifeIndicatorsText) {
    _subscription = LifeIndicators().stream.listen((value) {
      emit(value);
    });
  }

  StreamSubscription? _subscription;

  void updateData() async {
    await LifeIndicators().updateData();
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
