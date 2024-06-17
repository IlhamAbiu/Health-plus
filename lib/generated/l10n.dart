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

  /// `Укажите уровень своей активности`
  String get set_your_activity_level {
    return Intl.message(
      'Укажите уровень своей активности',
      name: 'set_your_activity_level',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, укажите свой уровень физической активности. Это поможет нам предоставить вам более точные и персонализированные рекомендации для улучшения вашего здоровья.`
  String get set_your_activity_level_description {
    return Intl.message(
      'Пожалуйста, укажите свой уровень физической активности. Это поможет нам предоставить вам более точные и персонализированные рекомендации для улучшения вашего здоровья.',
      name: 'set_your_activity_level_description',
      desc: '',
      args: [],
    );
  }

  /// `Сидячий образ жизни`
  String get activity_level_very_low_title {
    return Intl.message(
      'Сидячий образ жизни',
      name: 'activity_level_very_low_title',
      desc: '',
      args: [],
    );
  }

  /// `Минимальная активность, в основном сидячая работа и отсутствие регулярных тренировок.`
  String get activity_level_very_low_description {
    return Intl.message(
      'Минимальная активность, в основном сидячая работа и отсутствие регулярных тренировок.',
      name: 'activity_level_very_low_description',
      desc: '',
      args: [],
    );
  }

  /// `Легкая активность`
  String get activity_level_low_title {
    return Intl.message(
      'Легкая активность',
      name: 'activity_level_low_title',
      desc: '',
      args: [],
    );
  }

  /// `Небольшая физическая активность, например, прогулки или легкие упражнения 1-3 раза в неделю`
  String get activity_level_low_description {
    return Intl.message(
      'Небольшая физическая активность, например, прогулки или легкие упражнения 1-3 раза в неделю',
      name: 'activity_level_low_description',
      desc: '',
      args: [],
    );
  }

  /// `Умеренная активность`
  String get activity_level_medium_title {
    return Intl.message(
      'Умеренная активность',
      name: 'activity_level_medium_title',
      desc: '',
      args: [],
    );
  }

  /// `Регулярные физические упражнения средней интенсивности 3-5 раз в неделю.`
  String get activity_level_medium_description {
    return Intl.message(
      'Регулярные физические упражнения средней интенсивности 3-5 раз в неделю.',
      name: 'activity_level_medium_description',
      desc: '',
      args: [],
    );
  }

  /// `Высокая активность`
  String get activity_level_high_title {
    return Intl.message(
      'Высокая активность',
      name: 'activity_level_high_title',
      desc: '',
      args: [],
    );
  }

  /// `Интенсивные тренировки или физическая работа 6-7 раз в неделю.`
  String get activity_level_high_description {
    return Intl.message(
      'Интенсивные тренировки или физическая работа 6-7 раз в неделю.',
      name: 'activity_level_high_description',
      desc: '',
      args: [],
    );
  }

  /// `Очень высокая активность`
  String get activity_level_very_high_title {
    return Intl.message(
      'Очень высокая активность',
      name: 'activity_level_very_high_title',
      desc: '',
      args: [],
    );
  }

  /// `Ежедневные интенсивные тренировки и/или тяжелая физическая работа.`
  String get activity_level_very_high_description {
    return Intl.message(
      'Ежедневные интенсивные тренировки и/или тяжелая физическая работа.',
      name: 'activity_level_very_high_description',
      desc: '',
      args: [],
    );
  }

  /// `Изменить рост`
  String get change_height {
    return Intl.message(
      'Изменить рост',
      name: 'change_height',
      desc: '',
      args: [],
    );
  }

  /// `Изменить уровень активности`
  String get change_activity_level {
    return Intl.message(
      'Изменить уровень активности',
      name: 'change_activity_level',
      desc: '',
      args: [],
    );
  }

  /// `Применить`
  String get apply {
    return Intl.message(
      'Применить',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Рекомендации`
  String get recommendations {
    return Intl.message(
      'Рекомендации',
      name: 'recommendations',
      desc: '',
      args: [],
    );
  }

  /// `Активность`
  String get activity {
    return Intl.message(
      'Активность',
      name: 'activity',
      desc: '',
      args: [],
    );
  }

  /// `Жизненные показатели`
  String get life_indicators {
    return Intl.message(
      'Жизненные показатели',
      name: 'life_indicators',
      desc: '',
      args: [],
    );
  }

  /// `Сон`
  String get sleep {
    return Intl.message(
      'Сон',
      name: 'sleep',
      desc: '',
      args: [],
    );
  }

  /// `Среднее артериальное давление`
  String get average_arterial_pressure {
    return Intl.message(
      'Среднее артериальное давление',
      name: 'average_arterial_pressure',
      desc: '',
      args: [],
    );
  }

  /// `Этот показатель отражает среднее давление в артериях в течение одного сердечного цикла и важен для оценки состояния сердечно-сосудистой системы.`
  String get average_arterial_pressure_description {
    return Intl.message(
      'Этот показатель отражает среднее давление в артериях в течение одного сердечного цикла и важен для оценки состояния сердечно-сосудистой системы.',
      name: 'average_arterial_pressure_description',
      desc: '',
      args: [],
    );
  }

  /// `Пульсовое давление`
  String get pulsate_pressure {
    return Intl.message(
      'Пульсовое давление',
      name: 'pulsate_pressure',
      desc: '',
      args: [],
    );
  }

  /// `Это разница между систолическим и диастолическим давлением, и оно помогает оценить жесткость артерий и состояние сердечно-сосудистой системы.`
  String get pulsate_pressure_description {
    return Intl.message(
      'Это разница между систолическим и диастолическим давлением, и оно помогает оценить жесткость артерий и состояние сердечно-сосудистой системы.',
      name: 'pulsate_pressure_description',
      desc: '',
      args: [],
    );
  }

  /// `Средний пульс в покое`
  String get average_pulse_at_rest {
    return Intl.message(
      'Средний пульс в покое',
      name: 'average_pulse_at_rest',
      desc: '',
      args: [],
    );
  }

  /// `Этот показатель указывает на частоту сердечных сокращений в состоянии покоя и важен для оценки общего состояния сердечно-сосудистой системы.`
  String get average_pulse_at_rest_description {
    return Intl.message(
      'Этот показатель указывает на частоту сердечных сокращений в состоянии покоя и важен для оценки общего состояния сердечно-сосудистой системы.',
      name: 'average_pulse_at_rest_description',
      desc: '',
      args: [],
    );
  }

  /// `Физические параметры`
  String get body_parameters {
    return Intl.message(
      'Физические параметры',
      name: 'body_parameters',
      desc: '',
      args: [],
    );
  }

  /// `Вес тела`
  String get body_weight {
    return Intl.message(
      'Вес тела',
      name: 'body_weight',
      desc: '',
      args: [],
    );
  }

  /// `Этот показатель важен для оценки общей массы тела и планирования диеты и физических упражнений.`
  String get body_weight_description {
    return Intl.message(
      'Этот показатель важен для оценки общей массы тела и планирования диеты и физических упражнений.',
      name: 'body_weight_description',
      desc: '',
      args: [],
    );
  }

  /// `{value} кг`
  String body_weight_value(String value) {
    return Intl.message(
      '$value кг',
      name: 'body_weight_value',
      desc: '',
      args: [value],
    );
  }

  /// `Телесный жир`
  String get body_fat {
    return Intl.message(
      'Телесный жир',
      name: 'body_fat',
      desc: '',
      args: [],
    );
  }

  /// `Высокий уровень жира может указывать на повышенный риск развития различных заболеваний.`
  String get body_fat_description {
    return Intl.message(
      'Высокий уровень жира может указывать на повышенный риск развития различных заболеваний.',
      name: 'body_fat_description',
      desc: '',
      args: [],
    );
  }

  /// `{value}%`
  String body_fat_value(String value) {
    return Intl.message(
      '$value%',
      name: 'body_fat_value',
      desc: '',
      args: [value],
    );
  }

  /// `Индекс висцерального жира`
  String get visceral_fat_index {
    return Intl.message(
      'Индекс висцерального жира',
      name: 'visceral_fat_index',
      desc: '',
      args: [],
    );
  }

  /// `Этот показатель помогает оценить количество жира вокруг внутренних органов, что важно для здоровья сердца и сосудов.`
  String get visceral_fat_index_description {
    return Intl.message(
      'Этот показатель помогает оценить количество жира вокруг внутренних органов, что важно для здоровья сердца и сосудов.',
      name: 'visceral_fat_index_description',
      desc: '',
      args: [],
    );
  }

  /// `{value}`
  String visceral_fat_index_value(String value) {
    return Intl.message(
      '$value',
      name: 'visceral_fat_index_value',
      desc: '',
      args: [value],
    );
  }

  /// `Базальный метаболизм`
  String get basal_metabolic {
    return Intl.message(
      'Базальный метаболизм',
      name: 'basal_metabolic',
      desc: '',
      args: [],
    );
  }

  /// `Это количество калорий, которое организм тратит в состоянии покоя для поддержания жизненно важных функций.`
  String get basal_metabolic_description {
    return Intl.message(
      'Это количество калорий, которое организм тратит в состоянии покоя для поддержания жизненно важных функций.',
      name: 'basal_metabolic_description',
      desc: '',
      args: [],
    );
  }

  /// `{value} ккал`
  String basal_metabolic_value(String value) {
    return Intl.message(
      '$value ккал',
      name: 'basal_metabolic_value',
      desc: '',
      args: [value],
    );
  }

  /// `Калории для удержания веса`
  String get maintenance_calories {
    return Intl.message(
      'Калории для удержания веса',
      name: 'maintenance_calories',
      desc: '',
      args: [],
    );
  }

  /// `Это значение включает все энергозатраты организма при текущем уровне активности.`
  String get maintenance_calories_description {
    return Intl.message(
      'Это значение включает все энергозатраты организма при текущем уровне активности.',
      name: 'maintenance_calories_description',
      desc: '',
      args: [],
    );
  }

  /// `{value} ккал`
  String maintenance_calories_value(String value) {
    return Intl.message(
      '$value ккал',
      name: 'maintenance_calories_value',
      desc: '',
      args: [value],
    );
  }

  /// `Калории для повешения веса`
  String get weight_gain_calories {
    return Intl.message(
      'Калории для повешения веса',
      name: 'weight_gain_calories',
      desc: '',
      args: [],
    );
  }

  /// `Для набора веса рекомендуется потреблять 2200 ккал в день. Профицит калорий способствует увеличению массы тела.`
  String get weight_gain_calories_description {
    return Intl.message(
      'Для набора веса рекомендуется потреблять 2200 ккал в день. Профицит калорий способствует увеличению массы тела.',
      name: 'weight_gain_calories_description',
      desc: '',
      args: [],
    );
  }

  /// `{value} ккал`
  String weight_gain_calories_value(String value) {
    return Intl.message(
      '$value ккал',
      name: 'weight_gain_calories_value',
      desc: '',
      args: [value],
    );
  }

  /// `Калории для снижения веса`
  String get weight_loss_calories {
    return Intl.message(
      'Калории для снижения веса',
      name: 'weight_loss_calories',
      desc: '',
      args: [],
    );
  }

  /// `Дефицит калорий помогает уменьшить массу тела безопасными темпами.`
  String get weight_loss_calories_description {
    return Intl.message(
      'Дефицит калорий помогает уменьшить массу тела безопасными темпами.',
      name: 'weight_loss_calories_description',
      desc: '',
      args: [],
    );
  }

  /// `{value} ккал`
  String weight_loss_calories_value(String value) {
    return Intl.message(
      '$value ккал',
      name: 'weight_loss_calories_value',
      desc: '',
      args: [value],
    );
  }

  /// `Индекс массы тела`
  String get body_mass_index {
    return Intl.message(
      'Индекс массы тела',
      name: 'body_mass_index',
      desc: '',
      args: [],
    );
  }

  /// `Этот показатель рассчитывается на основе роста и веса и помогает определить, находится ли масса тела в пределах нормы.`
  String get body_mass_index_description {
    return Intl.message(
      'Этот показатель рассчитывается на основе роста и веса и помогает определить, находится ли масса тела в пределах нормы.',
      name: 'body_mass_index_description',
      desc: '',
      args: [],
    );
  }

  /// `{value}`
  String body_mass_index_value(String value) {
    return Intl.message(
      '$value',
      name: 'body_mass_index_value',
      desc: '',
      args: [value],
    );
  }

  /// `Эффективность сна`
  String get sleep_efficiency {
    return Intl.message(
      'Эффективность сна',
      name: 'sleep_efficiency',
      desc: '',
      args: [],
    );
  }

  /// `Это показатель того, какой процент времени, проведенного в постели, был потрачен на сон, и он указывает на качество сна.`
  String get sleep_efficiency_description {
    return Intl.message(
      'Это показатель того, какой процент времени, проведенного в постели, был потрачен на сон, и он указывает на качество сна.',
      name: 'sleep_efficiency_description',
      desc: '',
      args: [],
    );
  }

  /// `{value}%`
  String sleep_efficiency_value(String value) {
    return Intl.message(
      '$value%',
      name: 'sleep_efficiency_value',
      desc: '',
      args: [value],
    );
  }

  /// `Латентность сна`
  String get sleep_latency {
    return Intl.message(
      'Латентность сна',
      name: 'sleep_latency',
      desc: '',
      args: [],
    );
  }

  /// `Это время, необходимое для засыпания после укладывания в постель, и длительная латентность может указывать на проблемы со сном.`
  String get sleep_latency_description {
    return Intl.message(
      'Это время, необходимое для засыпания после укладывания в постель, и длительная латентность может указывать на проблемы со сном.',
      name: 'sleep_latency_description',
      desc: '',
      args: [],
    );
  }

  /// `{value} мин`
  String sleep_latency_value(String value) {
    return Intl.message(
      '$value мин',
      name: 'sleep_latency_value',
      desc: '',
      args: [value],
    );
  }

  /// `Процент глубокого сна`
  String get percent_deep_sleep {
    return Intl.message(
      'Процент глубокого сна',
      name: 'percent_deep_sleep',
      desc: '',
      args: [],
    );
  }

  /// `Глубокий сон важен для физического восстановления и обновления организма.`
  String get percent_deep_sleep_description {
    return Intl.message(
      'Глубокий сон важен для физического восстановления и обновления организма.',
      name: 'percent_deep_sleep_description',
      desc: '',
      args: [],
    );
  }

  /// `{value}%`
  String percent_deep_sleep_value(String value) {
    return Intl.message(
      '$value%',
      name: 'percent_deep_sleep_value',
      desc: '',
      args: [value],
    );
  }

  /// `Процент REM сна`
  String get percent_rem_sleep {
    return Intl.message(
      'Процент REM сна',
      name: 'percent_rem_sleep',
      desc: '',
      args: [],
    );
  }

  /// `REM (быстрый сон) важен для когнитивных функций, таких как память и обучение.`
  String get percent_rem_sleep_description {
    return Intl.message(
      'REM (быстрый сон) важен для когнитивных функций, таких как память и обучение.',
      name: 'percent_rem_sleep_description',
      desc: '',
      args: [],
    );
  }

  /// `{value}%`
  String percent_rem_sleep_value(String value) {
    return Intl.message(
      '$value%',
      name: 'percent_rem_sleep_value',
      desc: '',
      args: [value],
    );
  }

  /// `Процент поверхностного сна`
  String get percent_light_sleep {
    return Intl.message(
      'Процент поверхностного сна',
      name: 'percent_light_sleep',
      desc: '',
      args: [],
    );
  }

  /// `Этот показатель отражает количество легкого сна, который также важен для общего качества сна, хотя и менее глубокий по сравнению с другими фазами.`
  String get percent_light_sleep_description {
    return Intl.message(
      'Этот показатель отражает количество легкого сна, который также важен для общего качества сна, хотя и менее глубокий по сравнению с другими фазами.',
      name: 'percent_light_sleep_description',
      desc: '',
      args: [],
    );
  }

  /// `{value}%`
  String percent_light_sleep_value(String value) {
    return Intl.message(
      '$value%',
      name: 'percent_light_sleep_value',
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
