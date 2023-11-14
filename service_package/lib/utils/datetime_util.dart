import 'package:intl/intl.dart';

class DateTimeUtil {
  static String exchangeLocal(String date, {String type = 'yyyy-MM-dd'}) =>
      DateFormat(type).format(DateTime.parse(date).toLocal());
}
