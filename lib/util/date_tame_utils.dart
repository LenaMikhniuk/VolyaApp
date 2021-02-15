import 'package:intl/intl.dart';

class DateTimeUtils {
  static String getDayFromDateTime(int data) {
    if (data != null) {
      final dateTime =
          DateTime.fromMillisecondsSinceEpoch(data * 1000, isUtc: true);

      return DateFormat.E().format(dateTime);
    } else {
      return '';
    }
  }
}
