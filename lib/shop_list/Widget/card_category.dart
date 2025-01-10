import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      // Adjust based on your layout needs
      itemCount: 5,
      // Number of items to display
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          // Optional spacing
          child: Container(
            width: 80,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black26),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              "Category", // Use dynamic data from your list
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14), // Adjust style as needed
            ),
          ),
        );
      },
    );
  }
}
