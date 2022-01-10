import 'package:flutter/material.dart';
import 'package:football_jersey_app/theme/color.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/main_image.jpg"),
            fit: BoxFit.fill,
          ),
        ),
    ));
  }
}
