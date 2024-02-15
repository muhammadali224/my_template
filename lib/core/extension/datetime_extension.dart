// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';

extension DateTimeConverter on DateTime {
  String get toDMy => DateFormat("yyyy-MM-dd").format(this);
}
