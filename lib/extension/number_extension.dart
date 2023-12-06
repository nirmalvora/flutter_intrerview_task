import 'package:flutter/material.dart';

extension NumberFormatterDouble on double {
  String get getFormattedNumber {
    if (this > 999 && this < 99999) {
      return "${(this / 1000).toStringAsFixed(1)} K";
    } else if (this > 99999 && this < 999999) {
      return "${(this / 1000).toStringAsFixed(0)} K";
    } else if (this > 999999 && this < 999999999) {
      return "${(this / 1000000).toStringAsFixed(1)} M";
    } else if (this > 999999999) {
      return "${(this / 1000000000).toStringAsFixed(1)} B";
    } else {
      return toStringAsFixed(2);
    }
  }
}

extension NumberFormatterInt on int {
  String get getFormattedNumber {
    if (this > 999 && this < 99999) {
      return "${(this / 1000).toStringAsFixed(1)} K";
    } else if (this > 99999 && this < 999999) {
      return "${(this / 1000).toStringAsFixed(0)} K";
    } else if (this > 999999 && this < 999999999) {
      return "${(this / 1000000).toStringAsFixed(1)} M";
    } else if (this > 999999999) {
      return "${(this / 1000000000).toStringAsFixed(1)} B";
    } else {
      return toStringAsFixed(2);
    }
  }
}

extension SizedBoxInt on int {
  Widget get sw => SizedBox(
        width: double.parse(toString()),
      );
  Widget get sh => SizedBox(
        height: double.parse(toString()),
      );
}

extension SizedBoxDouble on double {
  Widget get sw => SizedBox(
        width: this,
      );
  Widget get sh => SizedBox(
        height: this,
      );
}
