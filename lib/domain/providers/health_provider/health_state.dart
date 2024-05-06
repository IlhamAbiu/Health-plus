part of 'health_cubit.dart';

class HealthState extends Equatable {
  const HealthState({
    this.oxygenDataList,
    this.diastolicDataList,
    this.systolicDataList,
    this.sleepSessionDataList,
    this.heartRateDataList,
    this.bodyMassDataList,
    this.bodyFatPercentageDataList,
  });

  final List<HealthDataPoint>? oxygenDataList;
  final List<HealthDataPoint>? diastolicDataList;
  final List<HealthDataPoint>? systolicDataList;
  final List<HealthDataPoint>? sleepSessionDataList;
  final List<HealthDataPoint>? heartRateDataList;
  final List<HealthDataPoint>? bodyMassDataList;
  final List<HealthDataPoint>? bodyFatPercentageDataList;

  @override
  List<Object?> get props => [
        oxygenDataList,
        diastolicDataList,
        systolicDataList,
        sleepSessionDataList,
        heartRateDataList,
        bodyMassDataList,
        bodyFatPercentageDataList,
      ];
}
