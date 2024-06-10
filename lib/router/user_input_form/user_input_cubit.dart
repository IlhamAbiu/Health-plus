import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';

enum UserInputState {
  initial,
  waiting,
  success,
}

class UserInputCubit extends Cubit<UserInputState> {
  UserInputCubit() : super(UserInputState.initial);

  String? _name;
  String? get name => _name;
  set name(String? name) {
    _name = name;
  }

  Gender? _gender;
  Gender? get gender => _gender;
  set gender(Gender? gender) {
    _gender = gender;
  }

  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  set birthday(DateTime? birthday) {
    _birthday = birthday;
  }

  int? _height;
  int? get height => _height;
  set height(int? height) {
    _height = height;
  }

  double? _weight;
  double? get weight => _weight;
  set weight(double? weight) {
    _weight = weight;
  }

  ActivityLevel? _activityLevel;
  ActivityLevel? get activityLevel => _activityLevel;
  set activityLevel(ActivityLevel? activityLevel) {
    _activityLevel = activityLevel;
  }

  Future<void> createUser() async {
    if (name == null ||
        gender == null ||
        birthday == null ||
        height == null ||
        weight == null) {
      emit(UserInputState.initial);
      return;
    }
    emit(UserInputState.waiting);
    final user = User(
      name: name!,
      birthday: birthday!,
      gender: gender!,
      height: height!,
      weight: weight!,
      activityLevel: activityLevel!,
    );
    await HealthService().writeData(
      type: HealthDataType.WEIGHT,
      value: user.weight,
    );
    await HealthService().writeData(
      type: HealthDataType.HEIGHT,
      value: user.height / 100,
    );
    await UserRepository().saveUser(user);
    emit(UserInputState.success);
  }
}
