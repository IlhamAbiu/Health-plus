// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(value) => "${value}%";

  static String m1(systolic, diastolic) =>
      "${systolic}/${diastolic} мм рт. ст.";

  static String m2(value) => "${value} кг";

  static String m3(value) => "${value} Ккал";

  static String m4(value) => "${value}%";

  static String m5(name) => "Добрый день, ${name}";

  static String m6(value) => "${value} кг";

  static String m7(value) => "${value} уд/м";

  static String m8(value) => "${value}";

  static String m9(value) => "${value} шагов";

  static String m10(value) => "${value}";

  static String m11(value) => "${value}%";

  static String m12(value) => "\n/${value} шаг.";

  static String m13(value) => "${value} минут";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "activity": MessageLookupByLibrary.simpleMessage("Активность"),
        "activity_level_high_description": MessageLookupByLibrary.simpleMessage(
            "Интенсивные тренировки или физическая работа 6-7 раз в неделю."),
        "activity_level_high_title":
            MessageLookupByLibrary.simpleMessage("Высокая активность"),
        "activity_level_low_description": MessageLookupByLibrary.simpleMessage(
            "Небольшая физическая активность, например, прогулки или легкие упражнения 1-3 раза в неделю"),
        "activity_level_low_title":
            MessageLookupByLibrary.simpleMessage("Легкая активность"),
        "activity_level_medium_description": MessageLookupByLibrary.simpleMessage(
            "Регулярные физические упражнения средней интенсивности 3-5 раз в неделю."),
        "activity_level_medium_title":
            MessageLookupByLibrary.simpleMessage("Умеренная активность"),
        "activity_level_very_high_description":
            MessageLookupByLibrary.simpleMessage(
                "Ежедневные интенсивные тренировки и/или тяжелая физическая работа."),
        "activity_level_very_high_title":
            MessageLookupByLibrary.simpleMessage("Очень высокая активность"),
        "activity_level_very_low_description": MessageLookupByLibrary.simpleMessage(
            "Минимальная активность, в основном сидячая работа и отсутствие регулярных тренировок."),
        "activity_level_very_low_title":
            MessageLookupByLibrary.simpleMessage("Сидячий образ жизни"),
        "apply": MessageLookupByLibrary.simpleMessage("Применить"),
        "average": MessageLookupByLibrary.simpleMessage("Средний"),
        "average_pulse_throughout_the_day":
            MessageLookupByLibrary.simpleMessage("Средний пульс в течении дня"),
        "average_value_throughout_the_day":
            MessageLookupByLibrary.simpleMessage(
                "Среднее значение в течении дня"),
        "blood_oxygen":
            MessageLookupByLibrary.simpleMessage("Кислород в крови"),
        "blood_oxygen_description": MessageLookupByLibrary.simpleMessage(
            "Уровень кислорода в крови - показатель здоровья легких"),
        "blood_oxygen_value": m0,
        "blood_pressure":
            MessageLookupByLibrary.simpleMessage("Артериальное давление"),
        "blood_pressure_value": m1,
        "body_mass": m2,
        "calculation": MessageLookupByLibrary.simpleMessage("Подсчёт"),
        "calories": m3,
        "change_activity_level":
            MessageLookupByLibrary.simpleMessage("Изменить уровень активности"),
        "change_height": MessageLookupByLibrary.simpleMessage("Изменить рост"),
        "cm": MessageLookupByLibrary.simpleMessage("см"),
        "data_not_available":
            MessageLookupByLibrary.simpleMessage("Данные не доступны"),
        "done": MessageLookupByLibrary.simpleMessage("Готово"),
        "fat_mass": m4,
        "female": MessageLookupByLibrary.simpleMessage("Женщина"),
        "friday": MessageLookupByLibrary.simpleMessage("Пт"),
        "get_started": MessageLookupByLibrary.simpleMessage("Начать"),
        "good_morning": m5,
        "heart_rate": MessageLookupByLibrary.simpleMessage("Пульс"),
        "height_and_weight": MessageLookupByLibrary.simpleMessage("Рост и вес"),
        "height_and_weight_description": MessageLookupByLibrary.simpleMessage(
            "Необходимо, чтобы вы выбрали наиболее приблизительную или точную информацию. Это позволит нам узнать больше о вашем здоровье."),
        "kg": MessageLookupByLibrary.simpleMessage("кг"),
        "life_indicators":
            MessageLookupByLibrary.simpleMessage("Жизненные показатели"),
        "male": MessageLookupByLibrary.simpleMessage("Мужчина"),
        "max": MessageLookupByLibrary.simpleMessage("Максимум"),
        "measurement_log":
            MessageLookupByLibrary.simpleMessage("Журнал измерений"),
        "min": MessageLookupByLibrary.simpleMessage("Минимум"),
        "monday": MessageLookupByLibrary.simpleMessage("Пн"),
        "muscle_mass": m6,
        "name": MessageLookupByLibrary.simpleMessage("Имя"),
        "name_app": MessageLookupByLibrary.simpleMessage("HealthPro"),
        "next": MessageLookupByLibrary.simpleMessage("Далее"),
        "no_data": MessageLookupByLibrary.simpleMessage("Нет данных"),
        "no_data_today":
            MessageLookupByLibrary.simpleMessage("Нет данных за сегодня"),
        "percent_body_fat":
            MessageLookupByLibrary.simpleMessage("Телесный жир"),
        "pulse_throughout_the_day":
            MessageLookupByLibrary.simpleMessage("Пульс в течении дня"),
        "pulse_value": m7,
        "recommendations": MessageLookupByLibrary.simpleMessage("Рекомендации"),
        "required_field":
            MessageLookupByLibrary.simpleMessage("Обязательное поле"),
        "saturday": MessageLookupByLibrary.simpleMessage("Сб"),
        "set_your_activity_level": MessageLookupByLibrary.simpleMessage(
            "Укажите уровень своей активности"),
        "set_your_activity_level_description": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, укажите свой уровень физической активности. Это поможет нам предоставить вам более точные и персонализированные рекомендации для улучшения вашего здоровья."),
        "set_your_birthday": MessageLookupByLibrary.simpleMessage(
            "Укажите дату своего рождения"),
        "set_your_gender":
            MessageLookupByLibrary.simpleMessage("Укажите свой пол"),
        "sleep": MessageLookupByLibrary.simpleMessage("Сон"),
        "sleep_indicator":
            MessageLookupByLibrary.simpleMessage("Показатель сна"),
        "sleep_indicator_value": m8,
        "step": MessageLookupByLibrary.simpleMessage("Шаги"),
        "steps": m9,
        "steps_to_day_current": m10,
        "steps_to_day_percent": m11,
        "steps_to_day_target": m12,
        "sunday": MessageLookupByLibrary.simpleMessage("Вс"),
        "thursday": MessageLookupByLibrary.simpleMessage("Чт"),
        "time": m13,
        "trends": MessageLookupByLibrary.simpleMessage("Тенденции"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Вт"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Ср"),
        "weight": MessageLookupByLibrary.simpleMessage("Вес"),
        "welcome_message": MessageLookupByLibrary.simpleMessage(
            "Добро пожаловать в семью HealtPro. Чтобы лучше заботиться о себе, пожалуйста, заполните следующую форму."),
        "what_is_your_name":
            MessageLookupByLibrary.simpleMessage("Как вас зовут?"),
        "your_body_composition":
            MessageLookupByLibrary.simpleMessage("Ваш состав тела")
      };
}
