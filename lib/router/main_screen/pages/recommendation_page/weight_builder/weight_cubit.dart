import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/services/generate_text/models/weight_response/weight_response.dart';

import 'package:health_plus/features/weight/weight.dart';

class WeightCubit extends Cubit<WeightResponse?> {
  WeightCubit() : super(Weight().lastWeight) {
    _subscription = Weight().stream.listen((value) {
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
