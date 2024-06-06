part of 'sleep_metrics_cubit.dart';

abstract class SleepMetricsState {
  SleepMetricsState({this.result});

  final SleepMetricsModels? result;
}

class SleepMetricsInitial extends SleepMetricsState {
  SleepMetricsInitial({super.result});
}

class SleepMetricsWaiting extends SleepMetricsState {
  SleepMetricsWaiting({super.result});
}

class SleepMetricsSuccess extends SleepMetricsState {
  SleepMetricsSuccess({super.result});
}

class SleepMetricsError extends SleepMetricsState {
  SleepMetricsError({
    super.result,
  });
}
