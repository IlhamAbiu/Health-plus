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

  /// `Тенденции`
  String get trends {
    return Intl.message(
      'Тенденции',
      name: 'trends',
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

  /// `Подсчёт`
  String get calculation {
    return Intl.message(
      'Подсчёт',
      name: 'calculation',
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
  String blood_oxygen_value(num value) {
    return Intl.message(
      '$value%',
      name: 'blood_oxygen_value',
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

  /// `{value}`
  String steps_to_day_current(num value) {
    return Intl.message(
      '$value',
      name: 'steps_to_day_current',
      desc: '',
      args: [value],
    );
  }

  /// `\n/{value} шаг.`
  String steps_to_day_target(num value) {
    return Intl.message(
      '\n/$value шаг.',
      name: 'steps_to_day_target',
      desc: '',
      args: [value],
    );
  }

  /// `{value}%`
  String steps_to_day_percent(num value) {
    return Intl.message(
      '$value%',
      name: 'steps_to_day_percent',
      desc: '',
      args: [value],
    );
  }

  /// `{value} шагов`
  String steps(num value) {
    return Intl.message(
      '$value шагов',
      name: 'steps',
      desc: '',
      args: [value],
    );
  }

  /// `{value} минут`
  String time(num value) {
    return Intl.message(
      '$value минут',
      name: 'time',
      desc: '',
      args: [value],
    );
  }

  /// `{value} Ккал`
  String calories(num value) {
    return Intl.message(
      '$value Ккал',
      name: 'calories',
      desc: '',
      args: [value],
    );
  }

  /// `Пн`
  String get monday {
    return Intl.message(
      'Пн',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Вт`
  String get tuesday {
    return Intl.message(
      'Вт',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Ср`
  String get wednesday {
    return Intl.message(
      'Ср',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Чт`
  String get thursday {
    return Intl.message(
      'Чт',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Пт`
  String get friday {
    return Intl.message(
      'Пт',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Сб`
  String get saturday {
    return Intl.message(
      'Сб',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Вс`
  String get sunday {
    return Intl.message(
      'Вс',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Шаги`
  String get step {
    return Intl.message(
      'Шаги',
      name: 'step',
      desc: '',
      args: [],
    );
  }

  /// `Вес`
  String get weight {
    return Intl.message(
      'Вес',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Кислород в крови`
  String get blood_oxygen {
    return Intl.message(
      'Кислород в крови',
      name: 'blood_oxygen',
      desc: '',
      args: [],
    );
  }

  /// `Пульс`
  String get heart_rate {
    return Intl.message(
      'Пульс',
      name: 'heart_rate',
      desc: '',
      args: [],
    );
  }

  /// `Средний пульс в течении дня`
  String get average_pulse_throughout_the_day {
    return Intl.message(
      'Средний пульс в течении дня',
      name: 'average_pulse_throughout_the_day',
      desc: '',
      args: [],
    );
  }

  /// `Среднее значение в течении дня`
  String get average_value_throughout_the_day {
    return Intl.message(
      'Среднее значение в течении дня',
      name: 'average_value_throughout_the_day',
      desc: '',
      args: [],
    );
  }

  /// `Телесный жир`
  String get percent_body_fat {
    return Intl.message(
      'Телесный жир',
      name: 'percent_body_fat',
      desc: '',
      args: [],
    );
  }

  /// `HealthPro`
  String get name_app {
    return Intl.message(
      'HealthPro',
      name: 'name_app',
      desc: '',
      args: [],
    );
  }

  /// `Добро пожаловать в семью HealtPro. Чтобы лучше заботиться о себе, пожалуйста, заполните следующую форму.`
  String get welcome_message {
    return Intl.message(
      'Добро пожаловать в семью HealtPro. Чтобы лучше заботиться о себе, пожалуйста, заполните следующую форму.',
      name: 'welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Начать`
  String get get_started {
    return Intl.message(
      'Начать',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Как вас зовут?`
  String get what_is_your_name {
    return Intl.message(
      'Как вас зовут?',
      name: 'what_is_your_name',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Далее`
  String get next {
    return Intl.message(
      'Далее',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Обязательное поле`
  String get required_field {
    return Intl.message(
      'Обязательное поле',
      name: 'required_field',
      desc: '',
      args: [],
    );
  }

  /// `Женщина`
  String get female {
    return Intl.message(
      'Женщина',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Мужчина`
  String get male {
    return Intl.message(
      'Мужчина',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Укажите свой пол`
  String get set_your_gender {
    return Intl.message(
      'Укажите свой пол',
      name: 'set_your_gender',
      desc: '',
      args: [],
    );
  }

  /// `Укажите дату своего рождения`
  String get set_your_birthday {
    return Intl.message(
      'Укажите дату своего рождения',
      name: 'set_your_birthday',
      desc: '',
      args: [],
    );
  }

  /// `см`
  String get cm {
    return Intl.message(
      'см',
      name: 'cm',
      desc: '',
      args: [],
    );
  }

  /// `кг`
  String get kg {
    return Intl.message(
      'кг',
      name: 'kg',
      desc: '',
      args: [],
    );
  }

  /// `Рост и вес`
  String get height_and_weight {
    return Intl.message(
      'Рост и вес',
      name: 'height_and_weight',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо, чтобы вы выбрали наиболее приблизительную или точную информацию. Это позволит нам узнать больше о вашем здоровье.`
  String get height_and_weight_description {
    return Intl.message(
      'Необходимо, чтобы вы выбрали наиболее приблизительную или точную информацию. Это позволит нам узнать больше о вашем здоровье.',
      name: 'height_and_weight_description',
      desc: '',
      args: [],
    );
  }

  /// `Готово`
  String get done {
    return Intl.message(
      'Готово',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Добрый день, {name}`
  String good_morning(String name) {
    return Intl.message(
      'Добрый день, $name',
      name: 'good_morning',
      desc: '',
      args: [name],
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
