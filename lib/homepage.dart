import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isOverlayActive = false;

  @override
  void initState() {
    FlutterOverlayWindow.isActive().then((value) {
      setState(() {
        isOverlayActive = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(209, 213, 219, 1),
        elevation: 0,
        title: Text(
          'Shutter',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.2,
            color: Color.fromRGBO(55, 65, 81, 1),
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async {
            if (await FlutterOverlayWindow.isActive()) {
              FlutterOverlayWindow.closeOverlay();
              setState(() {
                isOverlayActive = false;
              });
            } else {
              FlutterOverlayWindow.showOverlay(enableDrag: true, width: 2580);
              setState(() {
                isOverlayActive = true;
              });
            }
          },
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 241, 241, 241),
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    isOverlayActive
                        ? Color.fromRGBO(220, 38, 38, 0.6)
                        : Color.fromRGBO(22, 163, 74, 0.6),
                width: 2.5,
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      isOverlayActive
                          ? Color.fromRGBO(220, 38, 38, 0.6)
                          : Color.fromRGBO(22, 163, 74, 0.6),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: Text(
                isOverlayActive ? 'Turn Off' : 'Turn On',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color:
                      isOverlayActive
                          ? Color.fromRGBO(220, 38, 38, 0.6)
                          : Color.fromRGBO(22, 163, 74, 0.6),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
