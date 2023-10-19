import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shutla_v2/app.dart';
import 'package:shutla_v2/core/utils/provider_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: Add GoogleService file
  // await NotificationService.initFirebase();
  runApp(ProviderScope(
    observers: [AppProviderObserver()],
    child: ShutlaApp(),
  ));
}
