import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'facebook_ui/facebook_ui.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => const MyApp(),
      enabled: !kReleaseMode,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: const FacebookUI(),
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
    );
  }
}
