// main.dart (Entry Point)
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PCBuilderApp());
}

class PCBuilderApp extends StatelessWidget {
  const PCBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PC Builder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

