import 'package:flutter/material.dart';
import 'package:football_jersey_app/component/single_product.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Arsenal",
      "Image": "asset/images/categories/T_shirt/arsenal_home.jpg",
      "price": 20,
    },
    {
      "name": "FC Barcelona",
      "Image": "asset/images/categories/T_shirt/barcelona_home.jpg",
      "price": 30,
    },
    {
      "name": "Bayern Munich",
      "Image": "asset/images/categories/T_shirt/bayern_home.jpg",
      "price": 40,
    },
    {
      "name": "Boots",
      "Image": "asset/images/categories/boots/adidas_boots/addias_boots_1.jpg",
      "price": 20,
    },
    {
      "name": "Boot",
      "Image": "asset/images/categories/boots/nike_boots/nike_boots_1.jpg",
      "price": 20,
    },
    {
      "name": "Ball",
      "Image": "asset/images/categories/balls/adidas/addias_ball_1.jpg",
      "price": 20,
    },
    {
      "name": "Balls",
      "Image": "asset/images/categories/balls/nike/nike_ball_1.jpg",
      "price": 20,
    },
    {
      "name": "Gloves",
      "Image": "asset/images/categories/gloves/adidas/adidas_gloves_1.jpg",
      "price": 20,
    },
    {
      "name": "Glovese",
      "Image": "asset/images/categories/gloves/nike/nike_gloves_1.jpg",
      "price": 20,
    },
    {
      "name": "Sock",
      "Image": "asset/images/categories/socks/adidas/adidas_socks_1.png",
      "price": 20,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            prod_name: product_list[index]["name"],
            prod_image: product_list[index]["Image"],
            prod_price: product_list[index]["price"],
          );
        });
  }
}
