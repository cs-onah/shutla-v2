import 'package:intl/intl.dart';

class NumberUtil {
  static final numberFormat = NumberFormat("#,##0", 'en_US');
  static final currencyFormat = NumberFormat("#,##0.##", 'en_US');

  static String? formatNumber(dynamic number) {
    if (number == null) return null;
    return numberFormat.format(number);
  }

  static String? formatNumberWithDecimal(dynamic number) {
    if (number == null) return null;
    return currencyFormat.format(number);
  }
}
