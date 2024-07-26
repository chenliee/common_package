import 'package:intl/intl.dart';

class DateTimeUtil {
  static String exchangeLocal(String date, {String type = 'yyyy-MM-dd'}) =>
      DateFormat(type).format(DateTime.parse(date).toLocal());

  static String exchangeData(int createTime, {int end = 16}) {
    String time = createTime.toString() + '000';
    var strTime = DateTime.fromMillisecondsSinceEpoch(int.parse(time));
    time = strTime.toLocal().toString().substring(0, end);
    return time;
  }

  static String subtractData(String endTime) {
    var a = DateTime.parse(endTime);
    var _intendTime = a.millisecondsSinceEpoch;
    var _nowTime = DateTime.now().millisecondsSinceEpoch;
    int subtractTimeStamp = _intendTime - _nowTime;
    var subtractTime = DateTime.fromMillisecondsSinceEpoch(subtractTimeStamp);
    return subtractTime.toString();
  }

  static bool isExpired(String endTime) {
    var a = DateTime.parse(endTime);
    var _intendTime = a.millisecondsSinceEpoch;
    var _nowTime = DateTime.now().millisecondsSinceEpoch;
    if (_nowTime - _intendTime >= 0) {
      return true;
    }
    return false;
  }

  static String getNowTime() {
    DateTime res = DateTime.now();
    String ans = res.toString().substring(10, 16);
    return ans;
  }

  static String convertHourTime(int countTime) {
    int hour = (countTime ~/ 3600) % 24;
    int minute = countTime % 3600 ~/ 60;
    int second = countTime % 60;
    var str = '';
    str = str +
        hour.toString() +
        ':' +
        minute.toString() +
        ":" +
        second.toString();
    return str;
  }

  static String convertDayTime(int cancelTime, {bool second = true}) {
    // 这里实现将秒数转换为特定格式的时间字符串的逻辑
    int hours = cancelTime ~/ 3600;
    int minutes = (cancelTime % 3600) ~/ 60;
    int seconds = cancelTime % 60;
    return second
        ? '$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}'
        : '$hours:${minutes.toString().padLeft(2, '0')}';
  }

  static bool areDateTimesEqualFunction(String dt1Str, String dt2Str) {
    DateTime dt1 = DateTime.parse(dt1Str);
    DateTime dt2 = DateTime.parse(dt2Str);

    return (dt1.year == dt2.year &&
        dt1.month == dt2.month &&
        dt1.day == dt2.day &&
        dt1.hour == dt2.hour &&
        dt1.minute == dt2.minute &&
        dt1.second == dt2.second);
  }

  static bool isWithinTenSeconds(String dt1Str, String dt2Str, num second) {
    DateTime dt1 = DateTime.parse(dt1Str);
    DateTime dt2 = DateTime.parse(dt2Str);

    Duration difference = dt1.difference(dt2).abs();

    return difference.inSeconds <= second;
  }
}
