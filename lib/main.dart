import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:shutter/myapp.dart';
import 'package:shutter/overlayContent.dart';

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
            // Blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ), // Blur intensity
              child: Container(
                color: Colors.black.withOpacity(0.2), // Optional tint
              ),
            ),

            // Your overlay content
            OverlayContent(),
          ],
        ),

        // child: ExpandableFab(
        //   type: ExpandableFabType.fan,
        //   distance: 60,
        //   pos: ExpandableFabPos.right,
        //   fanAngle: 180,
        //   openButtonBuilder: RotateFloatingActionButtonBuilder(
        //     child: const Icon(Icons.settings),
        //     fabSize: ExpandableFabSize.regular,
        //     foregroundColor: Colors.amber,
        //     backgroundColor: Colors.green,
        //     shape: const CircleBorder(),
        //   ),
        //   closeButtonBuilder: DefaultFloatingActionButtonBuilder(
        //     child: const Icon(Icons.close),
        //     fabSize: ExpandableFabSize.small,
        //     foregroundColor: Colors.deepOrangeAccent,
        //     backgroundColor: Colors.lightGreen,
        //     shape: const CircleBorder(),
        //   ),
        //   children: [
        //     // FloatingActionButton.small(
        //     //   heroTag: null,
        //     //   child: const Icon(Icons.edit),
        //     //   onPressed: () {},
        //     // ),
        //     // FloatingActionButton.small(
        //     //   heroTag: null,
        //     //   child: const Icon(Icons.search),
        //     //   onPressed: () {},
        //     // ),
        //     IconButton(
        //       onPressed: () {},
        //       icon: const Icon(Icons.share, size: 30),
        //     ),
        //   ],
        // ),
      ),
    ),
  );
}
