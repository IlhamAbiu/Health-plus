// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Журнал измерений`
  String get measurement_log {
    return Intl.message(
      'Журнал измерений',
      name: 'measurement_log',
      desc: '',
      args: [],
    );
  }

  /// `Нет данных`
  String get no_data {
    return Intl.message(
      'Нет данных',
      name: 'no_data',
      desc: '',
      args: [],
    );
  }

  /// `Нет данных за сегодня`
  String get no_data_today {
    return Intl.message(
      'Нет данных за сегодня',
      name: 'no_data_today',
      desc: '',
      args: [],
    );
  }

  /// `Данные не доступны`
  String get data_not_available {
    return Intl.message(
      'Данные не доступны',
      name: 'data_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Артериальное давление`
  String get blood_pressure {
    return Intl.message(
      'Артериальное давление',
      name: 'blood_pressure',
      desc: '',
      args: [],
    );
  }

  /// `{systolic}/{diastolic} мм рт. ст.`
  String blood_pressure_value(num systolic, num diastolic) {
    return Intl.message(
      '$systolic/$diastolic мм рт. ст.',
      name: 'blood_pressure_value',
      desc: '',
      args: [systolic, diastolic],
    );
  }

  /// `{value}%`
  String blood_oxygen(num value) {
    return Intl.message(
      '$value%',
      name: 'blood_oxygen',
      desc: '',
      args: [value],
    );
  }

  /// `Уровень кислорода в крови - показатель здоровья легких`
  String get blood_oxygen_description {
    return Intl.message(
      'Уровень кислорода в крови - показатель здоровья легких',
      name: 'blood_oxygen_description',
      desc: '',
      args: [],
    );
  }

  /// `Показатель сна`
  String get sleep_indicator {
    return Intl.message(
      'Показатель сна',
      name: 'sleep_indicator',
      desc: '',
      args: [],
    );
  }

  /// `{value}`
  String sleep_indicator_value(num value) {
    return Intl.message(
      '$value',
      name: 'sleep_indicator_value',
      desc: '',
      args: [value],
    );
  }

  /// `Пульс в течении дня`
  String get pulse_throughout_the_day {
    return Intl.message(
      'Пульс в течении дня',
      name: 'pulse_throughout_the_day',
      desc: '',
      args: [],
    );
  }

  /// `Средний`
  String get average {
    return Intl.message(
      'Средний',
      name: 'average',
      desc: '',
      args: [],
    );
  }

  /// `Максимум`
  String get max {
    return Intl.message(
      'Максимум',
      name: 'max',
      desc: '',
      args: [],
    );
  }

  /// `Минимум`
  String get min {
    return Intl.message(
      'Минимум',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `{value} уд/м`
  String pulse_value(num value) {
    return Intl.message(
      '$value уд/м',
      name: 'pulse_value',
      desc: '',
      args: [value],
    );
  }

  /// `Ваш состав тела`
  String get your_body_composition {
    return Intl.message(
      'Ваш состав тела',
      name: 'your_body_composition',
      desc: '',
      args: [],
    );
  }

  /// `{value} кг`
  String body_mass(num value) {
    return Intl.message(
      '$value кг',
      name: 'body_mass',
      desc: '',
      args: [value],
    );
  }

  /// `{value} кг`
  String muscle_mass(num value) {
    return Intl.message(
      '$value кг',
      name: 'muscle_mass',
      desc: '',
      args: [value],
    );
  }

  /// `{value}%`
  String fat_mass(num value) {
    return Intl.message(
      '$value%',
      name: 'fat_mass',
      desc: '',
      args: [value],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
