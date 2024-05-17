import 'dart:convert';

import 'package:health_plus/core/utils.dart';

import 'user.dart';

class UserRepository {
  UserRepository._();
  static UserRepository? _instance;
  factory UserRepository() => _instance ??= UserRepository._();

  static const _key = 'user';

  User? _user;
  User? get user => _user;

  Future<User?> getUser() async {
    final data = await Utils().read(_key);
    if (data != null) {
      _user = User.fromJson(json.decode(data));
    }
    return user;
  }

  Future<void> saveUser(User user) async {
    _user = user;
    await Utils().write(_key, json.encode(user.toJson()));
  }
}
