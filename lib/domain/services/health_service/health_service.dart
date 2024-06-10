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
    required DateTime startTime,
    required DateTime endTime,
    required List<HealthDataType> types,
  }) async {
    try {
      List<HealthDataPoint> healthData = await Health().getHealthDataFromTypes(
        types: types,
        startTime: startTime,
        endTime: endTime,
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

  Future<List<HealthDataPoint>> fetchDataAfter30days({
    required List<HealthDataType> types,
  }) async {
    final now = DateTime.now();
    final startTime = now.subtract(const Duration(days: 30));
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

  Future<List<HealthDataPoint>> fetchDataAfter7days({
    required List<HealthDataType> types,
  }) async {
    final now = DateTime.now();
    final startTime = now.subtract(const Duration(days: 7));
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

  Future<List<HealthDataPoint>> fetchDataAfterToDay({
    required List<HealthDataType> types,
  }) async {
    final now = DateTime.now();
    final startTime = DateTime(now.year, now.month, now.day);
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

  Future<List<HealthDataPoint>> fetchDataAfter2days({
    required List<HealthDataType> types,
  }) async {
    final now = DateTime.now();
    final startTime = now.subtract(const Duration(days: 2));
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

  Future<void> writeData({
    required dynamic value,
    required HealthDataType type,
  }) async {
    final now = DateTime.now();
    final earlier = now.subtract(const Duration(minutes: 1));
    await Health().writeHealthData(
      value: value,
      type: type,
      startTime: earlier,
      endTime: now,
    );
  }
}
