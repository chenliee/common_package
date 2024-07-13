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
}
