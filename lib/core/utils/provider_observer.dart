import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (!observerBlacklist.contains(provider.runtimeType)) {
      log("${provider.runtimeType}: ${previousValue.runtimeType} --> ${newValue.runtimeType}");
    }
  }

  /// Add notifiers that shouldn't be logged by observer here.
  static const observerBlacklist = <Type>[
    // StateNotifierProvider<GeolocationService, Position?>,
  ];
}
