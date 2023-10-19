import 'package:flutter/material.dart';

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  final Color green;
  final Color orange;
  final Color blue;

  /// Use context.theme.cardColor instead
  final Color white;
  final Color black;
  final Color purpleLighter;
  final Color purpleLightest;

  AppColorExtension({
    required this.green,
    required this.orange,
    required this.blue,
    required this.white,
    required this.black,
    required this.purpleLighter,
    required this.purpleLightest,
  });

  @override
  ThemeExtension<AppColorExtension> copyWith({
    Color? green,
    Color? orange,
    Color? blue,
    Color? white,
    Color? black,
    Color? purpleLightest,
    Color? purpleLighter,
    Color? textFieldFillColor,
  }) {
    return AppColorExtension(
      green: green ?? this.green,
      orange: orange ?? this.orange,
      blue: blue ?? this.blue,
      white: white ?? this.white,
      black: black ?? this.black,
      purpleLighter: purpleLighter ?? this.purpleLighter,
      purpleLightest: purpleLightest ?? this.purpleLightest,
    );
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
    covariant ThemeExtension<AppColorExtension>? other,
    double t,
  ) =>
      this;
}
