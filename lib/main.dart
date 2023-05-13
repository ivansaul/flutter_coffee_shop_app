import 'dart:io';

import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop_app/screens/screens.dart';

void main() => runApp(
      DevicePreview(
        tools: [
          ...DevicePreview.defaultTools,
          DevicePreviewScreenshot(
            onScreenshot: screenshotAsFiles(Directory('/home/saul/Pictures/')),
          ),
        ],
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomeScreen()
    );
  }
}
