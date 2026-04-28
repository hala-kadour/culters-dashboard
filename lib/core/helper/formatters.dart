import 'package:intl/intl.dart';

class AppFormatters {
  AppFormatters._();

  //   $500 , $1,200
  static String formatPrice(double price) {
    final formatter = NumberFormat.currency(symbol: '\$', decimalDigits: 0);
    return formatter.format(price);
  }

  //  1,200
  static String formatNumber(int number) {
    final formatter = NumberFormat('#,###');
    return formatter.format(number);
  }

  //  49.65%
  static String formatPercent(double value) {
    return '${value.toStringAsFixed(2)}%';
  }

  //  01/25  12:45 PM
  static String formatOrderDate(DateTime date) {
    return DateFormat('MM/dd  hh:mm a').format(date);
  }

  //  26 مارس 2026
  static String formatFullDate(DateTime date) {
    return DateFormat('d MMMM yyyy', 'ar').format(date);
  }
}