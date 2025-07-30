
import 'package:flutter/material.dart';
import 'package:provider_test/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  final String title = 'Provider Test';
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}
