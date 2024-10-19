import 'package:flutter/material.dart';
import 'package:state_management/fooderlich/home/fooderlich.dart';
import 'package:state_management/fooderlich/home/utils/fooderlich_theme.dart';

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
      // 4
      title: 'Recipe Calculator',
      // 5
      theme: theme,
      home:  Fooderlich(),
    );
  }
}
