import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:football_jersey_app/component/products.dart';
import 'package:football_jersey_app/widgets/category.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SPORTS STORE"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Mr Bean"),
              accountEmail: Text("mr.bean@gmail.com"),
              currentAccountPicture: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Category"),
                leading: Icon(Icons.category),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Favorite"),
                leading: Icon(Icons.favorite),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.settings),
              ),
            ),
          ],
        ),
      ),
      body: ListView(children: [
        const SizedBox(
          height: 10,
        ),
        imageCarousel,
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: const Text(
            "Category",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const Category(),
        const Text("Recent Products"),
        Container(
          height: 320,
          child: Products(),
        )
      ]),
    );
  }
}

Widget imageCarousel = CarouselSlider(
  items: [
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            image: AssetImage("asset/images/main_image.jpg"),
            fit: BoxFit.cover,
          )),
    )
  ],
  options: CarouselOptions(
    height: 250.0,
    enlargeCenterPage: true,
    autoPlay: true,
    aspectRatio: 16 / 9,
    autoPlayCurve: Curves.fastOutSlowIn,
    enableInfiniteScroll: true,
    autoPlayAnimationDuration: const Duration(milliseconds: 800),
    viewportFraction: 0.8,
  ),
);
