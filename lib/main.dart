import 'package:flutter/material.dart';
import 'package:state_management/fooderlich/home/utils/fooderlich_theme.dart';
import 'package:state_management/weather_app/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather_App',
      theme: theme,
      home:  HomeScreen(),
    );
  }
}
