library theme;

import 'package:flutter/material.dart';

import 'package:shutla_v2/ui/themes/app_color_ext.dart';

part 'colors.dart';
part 'fonts.dart';
part 'text_styles.dart';

final ThemeData appTheme = _buildLightTheme();

ThemeData _buildLightTheme() {
  const Color primaryColor = _Colors.purple;
  const Color secondaryColor = _Colors.yellow;
  const Color tertiaryColor = _Colors.blueAccent;
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
    tertiary: tertiaryColor,
    error: _Colors.red,
  );
  final themeData = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: _Colors.scaffoldColor,
    dividerColor: _Colors.dividerColor,
    splashColor: _Colors.purpleLightest,
    cardColor: _Colors.white,
    colorScheme: colorScheme,
    iconTheme: IconThemeData(color: primaryColor, size: 24),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return primaryColor;
        }
        return secondaryColor;
      }),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: _Colors.scaffoldColor,
      centerTitle: false,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      extendedTextStyle: _AppTextStyles.buttonText,
      foregroundColor: _Colors.white,
    ),
    snackBarTheme: SnackBarThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      behavior: SnackBarBehavior.floating,
      contentTextStyle: _AppTextStyles.bodyRegular,
      insetPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: _Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        backgroundColor: primaryColor,
        textStyle: _AppTextStyles.buttonText,
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 13.5),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _AppTextStyles.buttonTextPurple,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: primaryColor, width: 1),
        elevation: 0,
        textStyle: _AppTextStyles.buttonTextPurple,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: _Colors.purpleLightest),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: _Colors.purpleLightest),
      ),
      isDense: true,
      // filled: true,
      // fillColor: _Colors.white,
      hintStyle: _AppTextStyles.bodyRegular.copyWith(color: _Colors.grey),
    ),
    fontFamily: AppFont.dmSans,
    textTheme: const TextTheme(
      bodyLarge: _AppTextStyles.bodyBold,
      bodyMedium: _AppTextStyles.bodyRegular, // default text styling
      bodySmall: _AppTextStyles.bodySmall,
      displayLarge: _AppTextStyles.displayLarge,
      displayMedium: _AppTextStyles.displayMedium,
      displaySmall: _AppTextStyles.displaySmall,
      headlineLarge: _AppTextStyles.headingLarge,
      headlineMedium: _AppTextStyles.headingMedium,
      headlineSmall: _AppTextStyles.headingSmall,
      titleMedium: _AppTextStyles.textFieldBody, // TextFormField text style
      titleLarge: _AppTextStyles.textFieldBodyWithAppFont,
      titleSmall: _AppTextStyles.textFieldCaption,

      ///for captions
      labelMedium: _AppTextStyles.bodyCaption,
      labelSmall: _AppTextStyles.textFieldCaption,
    ),
    extensions: [
      AppColorExtension(
        green: _Colors.green,
        orange: _Colors.orange,
        blue: _Colors.blueAccent,
        white: _Colors.white,
        black: _Colors.black,
        purpleLighter: _Colors.purpleLighter,
        purpleLightest: _Colors.purpleLightest,
      ),
    ],
  );
  return themeData;
}
