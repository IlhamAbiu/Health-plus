part of 'resting_pulse_cubit.dart';

abstract class RestingPulseState {
  RestingPulseState({required this.result});
  final RestingPulseModel? result;
}

class RestingPulseInitial extends RestingPulseState {
  RestingPulseInitial({required super.result});
}

class RestingPulseWaiting extends RestingPulseState {
  RestingPulseWaiting({required super.result});
}

class RestingPulseSuccess extends RestingPulseState {
  RestingPulseSuccess({required super.result});
}

class RestingPulseError extends RestingPulseState {
  RestingPulseError({required super.result});
}
