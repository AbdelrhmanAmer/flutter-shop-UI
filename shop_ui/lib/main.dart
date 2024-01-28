import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme().copyWith(
          bodyMedium: const TextStyle(color: Colors.black54),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          background: bgColor,
          
        ),
        useMaterial3: true,
        fontFamily: "Gordita",
      ),
      home: const HomeScrean(),
    );
  }
}
