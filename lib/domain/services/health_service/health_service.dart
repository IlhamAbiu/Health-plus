import 'dart:async';
import 'dart:convert';
import 'dart:developer';
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

  Future<List<HealthDataPoint>> fetchData({
    required List<HealthDataType> types,
  }) async {
    final now = DateTime.now();
    final startTime = DateTime(2020);
    try {
      List<HealthDataPoint> healthData = await Health().getHealthDataFromTypes(
        types: types,
        startTime: startTime,
        endTime: now,
      );
      final List<HealthDataPoint> healthDataList = [];
      healthDataList.addAll(Health().removeDuplicates(healthData));
      for (var element in healthDataList) {
        log('fetched data: ${json.encode(element.toJson())}');
      }
      return healthDataList;
    } catch (_) {
      rethrow;
    }
  }
}
