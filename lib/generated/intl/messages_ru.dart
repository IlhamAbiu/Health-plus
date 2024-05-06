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

  static String m3(value) => "${value}%";

  static String m4(value) => "${value} кг";

  static String m5(value) => "${value} уд/м";

  static String m6(value) => "${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "average": MessageLookupByLibrary.simpleMessage("Средний"),
        "blood_oxygen": m0,
        "blood_oxygen_description": MessageLookupByLibrary.simpleMessage(
            "Уровень кислорода в крови - показатель здоровья легких"),
        "blood_pressure":
            MessageLookupByLibrary.simpleMessage("Артериальное давление"),
        "blood_pressure_value": m1,
        "body_mass": m2,
        "data_not_available":
            MessageLookupByLibrary.simpleMessage("Данные не доступны"),
        "fat_mass": m3,
        "max": MessageLookupByLibrary.simpleMessage("Максимум"),
        "measurement_log":
            MessageLookupByLibrary.simpleMessage("Журнал измерений"),
        "min": MessageLookupByLibrary.simpleMessage("Минимум"),
        "muscle_mass": m4,
        "no_data": MessageLookupByLibrary.simpleMessage("Нет данных"),
        "no_data_today":
            MessageLookupByLibrary.simpleMessage("Нет данных за сегодня"),
        "pulse_throughout_the_day":
            MessageLookupByLibrary.simpleMessage("Пульс в течении дня"),
        "pulse_value": m5,
        "sleep_indicator":
            MessageLookupByLibrary.simpleMessage("Показатель сна"),
        "sleep_indicator_value": m6,
        "your_body_composition":
            MessageLookupByLibrary.simpleMessage("Ваш состав тела")
      };
}
