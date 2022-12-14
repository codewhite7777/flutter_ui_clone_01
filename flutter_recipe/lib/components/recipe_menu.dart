import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "ALL"),
          const SizedBox(
            width: 25,
          ),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          const SizedBox(
            width: 25,
          ),
          _buildMenuItem(Icons.fastfood, "Burger"),
          const SizedBox(
            width: 25,
          ),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
          const SizedBox(
            width: 25,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60.0,
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }
}
