import 'package:flutter/material.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'features/intro/firstscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Appcolor.scaffoldBackground),
      home: FirstScreen(),
    );
  }
}
