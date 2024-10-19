import 'package:flutter/material.dart';
import 'package:state_management/fooderlich/home/utils/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  // 1
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      child: Container(
        padding: EdgeInsets.all(24),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/fooderlich/assets/photo-1655246741674-5646da9c03c5.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: [
            Text(category, style: FooderlichTheme.darkTextTheme.bodyMedium),
            Positioned(
              top: 20.0,
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headlineMedium,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.bodyMedium,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
