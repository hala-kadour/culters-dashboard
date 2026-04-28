import 'package:easy_localization/easy_localization.dart';

import '../../translations/locale_keys.g.dart';

class AppValidators {
  AppValidators._();

  static String? required(String? value, [String? fieldName]) {
    if (value == null || value.trim().isEmpty) {
      final name = fieldName ?? LocaleKeys.validators_field.tr();
      return LocaleKeys.validators_required.tr(args: [name]);
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.validators_email_required.tr();
    }
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(value)) return LocaleKeys.validators_email_invalid.tr();
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.validators_password_required.tr();
    }
    if (value.length < 8) return LocaleKeys.validators_password_short.tr();
    return null;
  }

  static String? price(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.validators_price_required.tr();
    }
    final priceValue = double.tryParse(value);
    if (priceValue == null) return LocaleKeys.validators_price_invalid.tr();
    if (priceValue <= 0) return LocaleKeys.validators_price_zero.tr();
    return null;
  }

  static String? stock(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.validators_stock_required.tr();
    }
    final stockValue = int.tryParse(value);
    if (stockValue == null) return LocaleKeys.validators_stock_invalid.tr();
    if (stockValue < 0) return LocaleKeys.validators_stock_negative.tr();
    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.validators_phone_required.tr();
    }
    final regex = RegExp(r'^\+?[\d\s\-]{9,15}$');
    if (!regex.hasMatch(value)) return LocaleKeys.validators_phone_invalid.tr();
    return null;
  }
}
