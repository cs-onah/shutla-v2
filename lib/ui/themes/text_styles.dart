part of theme;

/// displayText uses weight - 700, while headingText uses weight - 500. Both have sizes 20, 18, 16
/// all bodyText uses size - 16, varying weights
class _AppTextStyles {

  static const bodyRegular = TextStyle(
    fontSize: 16,
    fontFamily: AppFont.dmSans,
    color: _Colors.black,
    fontWeight: FontWeight.w400,
  );

  static const bodySmall = TextStyle(
    fontSize: 14,
    fontFamily: AppFont.dmSans,
    color: _Colors.black,
    fontWeight: FontWeight.w400,
  );

  static const bodyBold = TextStyle(
    fontSize: 16,
    fontFamily: AppFont.dmSans,
    color: _Colors.black,
    fontWeight: FontWeight.w700,
  );

  static const bodyCaption = TextStyle(
    fontSize: 16,
    fontFamily: AppFont.dmSans,
    color: _Colors.greyLighter,
    fontWeight: FontWeight.w400,
  );

  static const textFieldCaption = TextStyle(
    fontSize: 12,
    fontFamily: AppFont.dmSans,
    color: _Colors.greyLighter,
    fontWeight: FontWeight.w400,
  );

  static const textFieldBodyWithAppFont = TextStyle(
    fontSize: 16,
    fontFamily: AppFont.dmSans,
    color: _Colors.greyDarker,
    fontWeight: FontWeight.w400,
  );

  static const textFieldBody = TextStyle(
    fontSize: 16,
    fontFamily: AppFont.dmSans,
    color: _Colors.greyDarker,
    fontWeight: FontWeight.w400,
  );

  static const buttonText = TextStyle(
    fontSize: 16,
    fontFamily: AppFont.dmSans,
    color: _Colors.white,
    fontWeight: FontWeight.w700,
  );

  static const buttonTextPurple = TextStyle(
    fontSize: 16,
    fontFamily: AppFont.dmSans,
    color: _Colors.purple,
    fontWeight: FontWeight.w700,
  );

  static const displayLarge = TextStyle(
    fontSize: 28,
    fontFamily: AppFont.dmSans,
    color: _Colors.black,
    fontWeight: FontWeight.w700,
  );

  static const displayMedium = TextStyle(
    fontSize: 20,
    fontFamily: AppFont.dmSans,
    color: _Colors.black,
    fontWeight: FontWeight.w700,
  );

  static const displaySmall = TextStyle(
    fontSize: 16,
    fontFamily: AppFont.dmSans,
    color: _Colors.black,
    fontWeight: FontWeight.w700,
  );

  static const headingLarge = TextStyle(
    fontSize: 20,
    fontFamily: AppFont.dmSans,
    color: _Colors.black,
    fontWeight: FontWeight.w500,
  );

  static const headingMedium = TextStyle(
    fontSize: 18,
    fontFamily: AppFont.dmSans,
    color: _Colors.black,
    fontWeight: FontWeight.w500,
  );

  static const headingSmall = TextStyle(
    fontSize: 16,
    fontFamily: AppFont.dmSans,
    color: _Colors.black,
    fontWeight: FontWeight.w500,
  );
}
