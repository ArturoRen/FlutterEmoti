import 'package:emoti/translate/translations.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get formatYMDDate {
    return DateFormat.yMd(AppTranslations().currentLanguage.toLanguageTag()).format(this);
  }
}
