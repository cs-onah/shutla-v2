import 'package:google_maps_flutter/google_maps_flutter.dart';

extension LatLngExtension on LatLng? {
  List<double>? get toList {
    if (this == null) return null;
    return [
      this!.longitude,
      this!.latitude
    ]; // App uses Longitude first before latitude
  }

  String? get toListString {
    if (this == null) return null;
    return toList.toString();
  }
}
