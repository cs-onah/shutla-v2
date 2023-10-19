import 'package:flutter/material.dart';
import 'package:shutla_v2/core/constants/route_names.dart';
import 'package:shutla_v2/ui/themes/theme.dart';

class ShutlaApp extends StatelessWidget {
  const ShutlaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      title: 'Shutla',
      initialRoute: RouteNames.splashScreen,
      onGenerateRoute: RouteNames.generateRoute,
    );
  }
}
