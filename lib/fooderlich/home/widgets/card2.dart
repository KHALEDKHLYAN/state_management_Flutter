import 'package:flutter/material.dart';
import 'package:state_management/fooderlich/home/utils/author_card.dart';
import 'package:state_management/fooderlich/home/utils/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/fooderlich/assets/smoothey.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // 2
        child: Column(children: [
          AuthorCard(
            authorName: 'Mike Katz',
            title: 'Smoothie Connoisseur',
            imageProvider: AssetImage(
                'lib/fooderlich/assets/profile_pic/person_kevin.jpeg'),
          ),
          // 1
          Expanded(
            // 2
            child: Stack(
              children: [
                // 3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text('Recipe',
                      style: FooderlichTheme.lightTextTheme.headlineMedium),
                ),
                // 4
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Smoothies',
                      style: FooderlichTheme.lightTextTheme.headlineMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
