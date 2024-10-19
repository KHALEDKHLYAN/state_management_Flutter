import 'package:flutter/material.dart';
import 'package:state_management/fooderlich/home/widgets/card1.dart';
import 'package:state_management/fooderlich/home/widgets/card2.dart';
import 'package:state_management/fooderlich/home/widgets/card3.dart';

class Fooderlich extends StatefulWidget {
  const Fooderlich({super.key});

  @override
  State<Fooderlich> createState() => _FooderlichState();
}

class _FooderlichState extends State<Fooderlich> {
  // Move selectedIndex out of the build method to preserve state across rebuilds
  int selectedIndex = 0;

  // List of pages to display
  List<Widget> pages = <Widget>[
    Card1(),
    Card2(),
    Card3(),
  ];

  // Callback for when a bottom navigation item is tapped
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: pages[selectedIndex], // Show the selected page

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.secondary, // Use a reliable color

        currentIndex: selectedIndex, // Highlight the selected item
        onTap: onItemTapped, // Handle item taps

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
