import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              FlutterOverlayWindow.showOverlay(enableDrag: true, width: 900);
            }
          },
          child: Text('Turn On'),
        ),
      ),
    );
  }
}
