import 'package:flutter/material.dart';
import 'package:state_management/recipe_app/home/recipe.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Calculator'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        // 10
                        // 
                        return Text('Detail page');
                      },
                    ),
                  );
                },
                child: buildRecipeCard(Recipe.samples[index]));
          },
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  // 1
  return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

      // 2
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          // 3
          children: <Widget>[
            // 4
            Image(image: AssetImage(recipe.imageUrl)),
            SizedBox(
              height: 14.0,
            ),
            // 5
            Text(
              recipe.label,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'palatino',
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ));
}
