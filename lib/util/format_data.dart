import 'package:intl/intl.dart';

/// データのフォーマットを行うクラス
class FormatData {
  FormatData._();

  /// 日付のフォーマット
  static String formatDate(DateTime now) {
    final formatter = DateFormat('yyyy/MM/dd HH:mm:ss');
    final formatted = formatter.format(now);
    return formatted;
  }

  /// StopWatchのフォーマット
  static String formatStopWatch(String time) {
    final dotIndex = time.indexOf('.');
    final formattedTime = time.substring(0, dotIndex + 3);
    return formattedTime;
  }
}
