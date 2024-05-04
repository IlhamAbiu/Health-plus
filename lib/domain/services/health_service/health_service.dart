import 'dart:async';
import 'dart:io';

import 'package:health/health.dart';

import 'types.dart';

class HealthService {
  HealthService._();
  static HealthService? _instance;
  factory HealthService() => _instance ??= HealthService._();

  List<HealthDataType> get _types => (Platform.isAndroid)
      ? dataTypesAndroid
      : (Platform.isIOS)
          ? dataTypesIOS
          : [];

  List<HealthDataAccess> get _permissions =>
      _types.map((e) => HealthDataAccess.READ_WRITE).toList();

  final List<HealthDataPoint> _healthDataList = [];

  Future<bool> checkSdkAvailable() async {
    final status = await Health().getHealthConnectSdkStatus();
    return status == HealthConnectSdkStatus.sdkAvailable;
  }

  Future<bool> authorization() async {
    await Health().configure(useHealthConnectIfAvailable: true);
    await Health().hasPermissions(_types, permissions: _permissions);
    bool authorized = false;
    try {
      authorized = await Health()
          .requestAuthorization(_types, permissions: _permissions);
    } catch (_) {
      rethrow;
    }
    return authorized;
  }

  Future<void> installHealthConnect() async {
    await Health().installHealthConnect();
  }

  Future<void> fetchData() async {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(hours: 24));
    try {
      List<HealthDataPoint> healthData = await Health().getHealthDataFromTypes(
        types: _types,
        startTime: yesterday,
        endTime: now,
      );
      _healthDataList.clear();
      _healthDataList.addAll(Health().removeDuplicates(healthData));
    } catch (_) {
      rethrow;
    }
  }
}
