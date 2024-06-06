part of 'blood_pressure_cubit.dart';

abstract class BloodPressureState {
  BloodPressureState({required this.result});

  final LifeMetricsModel? result;
}

class BloodPressureInitial extends BloodPressureState {
  BloodPressureInitial({required super.result});
}

class BloodPressureWaiting extends BloodPressureState {
  BloodPressureWaiting({required super.result});
}

class BloodPressureSuccess extends BloodPressureState {
  BloodPressureSuccess({required super.result});
}

class BloodPressureError extends BloodPressureState {
  BloodPressureError({required super.result});
}
