import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Image image;
  final String name;

  CategoryCard({required this.image, required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.blueGrey,
              ),
            ]),
        padding: const EdgeInsets.all(8.0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: image,
              flex: 75,
            ),
            Expanded(
                flex: 25,
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
