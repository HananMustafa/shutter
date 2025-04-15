import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void iniOverlay() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      double screenWidth = MediaQuery.of(context).size.width;
      double screenHeight = MediaQuery.of(context).size.height;

      print('DEVICE WIDTH: $screenWidth');
      print('DEVICE HEIGHT: $screenHeight');

      if (screenWidth < 500) {
        screenWidth += 400;
      } else if (screenWidth < 1000) {
        screenWidth += 750;
      } else {
        screenWidth += 1500;
      }

      FlutterOverlayWindow.showOverlay(enableDrag: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            if (await FlutterOverlayWindow.isActive()) {
              FlutterOverlayWindow.closeOverlay();
            } else {
              // iniOverlay();

              FlutterOverlayWindow.showOverlay(enableDrag: true, width: 2580);
            }
          },
          child: Text('Turn On'),
        ),
      ),
    );
  }
}
