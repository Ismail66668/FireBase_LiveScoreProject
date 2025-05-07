import 'package:flutter/material.dart';
import 'package:flutter_fire/screen/home_screen.dart';

class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
