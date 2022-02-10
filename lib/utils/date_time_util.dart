import 'package:intl/intl.dart';

class DateTimeUtil {
  final _dateFormat = DateFormat.yMMMd();

  String formatPostView(DateTime date) {
    return _dateFormat.format(date);
  }
}
