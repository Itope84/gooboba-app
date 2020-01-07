import 'package:intl/intl.dart';

String formatCurrency(dynamic number) {
  return (new NumberFormat("#,##0", "en_US")).format(number);
}
