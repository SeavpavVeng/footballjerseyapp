import 'package:flutter/material.dart';
import 'package:football_jersey_app/widgets/category_card.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCard(
            image: Image.asset(
              "asset/images/categories/category/T_shirts.png",
            ),
            name: "Jersey",
          ),
          CategoryCard(
            image: Image.asset(
              "asset/images/categories/category/ball.jpg",
            ),
            name: "Ball",
          ),
          CategoryCard(
            image: Image.asset(
              "asset/images/categories/category/boots.jpg",
            ),
            name: "Boots",
          ),
          CategoryCard(
            image: Image.asset(
              "asset/images/categories/category/gloves.png",
            ),
            name: "Gloves",
          ),
          CategoryCard(
            image: Image.asset(
              "asset/images/categories/category/socks.png",
            ),
            name: "Socks",
          ),
        ],
      ),
    );
  }
}
