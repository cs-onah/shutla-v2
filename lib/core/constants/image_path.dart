import 'dart:io';

bool get isAppleDevice => Platform.isIOS || Platform.isMacOS;

class ImagePath {
  static const imgBasePath = 'assets/images';
  static const splashAsset = '$imgBasePath/splash_assets.png';
  static const cardFlip = '$imgBasePath/card_flip.png';
  static const logoBg = '$imgBasePath/logo_bg.png';
}
