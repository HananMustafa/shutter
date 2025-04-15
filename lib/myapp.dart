import 'package:flutter/material.dart';
import 'package:shutter/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(209, 213, 219, 1),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Shutter'),
    );
  }
}
