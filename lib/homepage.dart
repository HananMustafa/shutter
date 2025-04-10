import 'dart:developer';
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            OverlayPosition startPosition = OverlayPosition(140, -70);

            if (await FlutterOverlayWindow.isActive()) {
              FlutterOverlayWindow.closeOverlay();
            } else {
              FlutterOverlayWindow.showOverlay(
                // height: 500,
                // width: 50,
                enableDrag: true,
                // positionGravity: PositionGravity.auto,
                // startPosition: startPosition,
              );
            }
          },
          child: Text('Turn On'),
        ),

        // child: Column(
        //   children: [
        //     //START BUTTON
        //     ElevatedButton(
        //       onPressed: () async {
        //         final isGranted =
        //             await DashBubble.instance.requestOverlayPermission();
        //         print('permission: $isGranted');

        //         startBubble(
        //           bubbleOptions: BubbleOptions(
        //             bubbleIcon: 'shutter',
        //             bubbleSize: 140,
        //             enableClose: false,
        //             distanceToClose: 90,
        //             enableAnimateToEdge: true,
        //             enableBottomShadow: true,
        //             keepAliveWhenAppExit: false,
        //           ),
        //           onTap: () {
        //             logMessage(message: 'Bubble Tapped');
        //           },
        //         );
        //       },
        //       child: Text('Start'),
        //     ),

        //     //STOP BUTTON
        //     ElevatedButton(onPressed: () async {}, child: Text('Stop')),
        //   ],
        // ),
      ),
    );
  }

  // Future<void> startBubble({
  //   BubbleOptions? bubbleOptions,
  //   VoidCallback? onTap,
  // }) async {
  //   final hasStarted = await DashBubble.instance.startBubble(
  //     bubbleOptions: bubbleOptions,
  //     onTap: onTap,
  //   );
  //   print('Bubble Started: $hasStarted');
  // }

  // logMessage({required String message}) {
  //   log(message);
  // }

  // Future<void> stopBubble() async {
  //   final hasStopped = await DashBubble.instance.stopBubble();
  //   print('Bubble stopped: $hasStopped');
  // }
}
