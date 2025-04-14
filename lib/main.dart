import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:shutter/myapp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!await FlutterOverlayWindow.isPermissionGranted()) {
    FlutterOverlayWindow.requestPermission();
  }

  runApp(const MyApp());
}

// overlay entry point
@pragma("vm:entry-point")
void overlayMain() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        color: Colors.transparent,

        child: Stack(
          children: [
            Image.asset(
              'assets/images/shutter.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ],
        ),
      ),
    ),
  );
}
