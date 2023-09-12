import 'package:intl/intl.dart';

class DateTimeUtil {
  static String exchangeLocal(String date) =>
      DateFormat('yyyy-MM-dd').format(DateTime.parse(date).toLocal());
}
