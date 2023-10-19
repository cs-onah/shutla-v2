import 'dart:developer';
import 'dart:io';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shutla_v2/core/constants/globals.dart';
import 'package:shutla_v2/core/models/events/app_error_event.dart';

class ImageUtils {
  static String fileName(String filePath) => filePath.split('/').last;

  static const List<String> allowedExtensions = [
    '.jpg',
    '.jpeg',
    '.png',
    '.gif',
  ];

  static Future<String> localFileToBase64(File file) async {
    Uint8List imageBytes = await file.readAsBytes();
    String base64string = base64.encode(imageBytes);
    return base64string;
  }

  static Future<String> assetFileToBase64(String assetPath) async {
    ByteData bytes = await rootBundle.load(assetPath);
    var buffer = bytes.buffer;
    var base64String = base64.encode(Uint8List.view(buffer));
    return base64String;
  }

  static Uint8List memoryImageFromBase64(String base64Image) =>
      Base64Decoder().convert(base64Image);

  // use with Image.network widget
  static dynamic decodeBase64(String encoded) {
    String decoded = utf8.decode(base64Url.decode(encoded));
    return decoded;
  }

  static Future<File?> pickImage({
    ImageSource source = ImageSource.gallery,
    int quality = 50,
  }) async {
    XFile? file = await ImagePicker().pickImage(
      source: source,
      imageQuality: quality,
    );

    if (file == null) return null;

    /// Check file uses allowed file extensions
    bool hasAllowedExtension = false;
    for (final extension in allowedExtensions) {
      if (file.path.toLowerCase().endsWith(extension)) {
        hasAllowedExtension = true;
      }
    }

    if (hasAllowedExtension) {
      return File(file.path);
    } else {
      eventBus.fire(
        AppErrorEvent(
          "Only ${allowedExtensions.toString().replaceAll("[", "").replaceAll("]", "")} files are allowed",
        ),
      );
      return null;
    }
  }

  static const imgPermissions = [Permission.camera, Permission.storage];
  static Future<bool> requestImagePermissions() async {
    bool success = false;
    try {
      final status = await imgPermissions.request();
      for (final status in status.values) {
        success = status == PermissionStatus.limited ||
            status == PermissionStatus.granted;
      }
    } catch (_) {
      log("Image Utils: Image Permissions Request failed");
    }
    return success;
  }
}
