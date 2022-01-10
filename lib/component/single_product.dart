import 'package:flutter/material.dart';
import 'package:football_jersey_app/screens/products_detail.dart';

class SingleProduct extends StatelessWidget {
  final prod_name;
  final prod_image;
  final prod_price;

  SingleProduct({
    this.prod_name,
    this.prod_image,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      prod_details_name: prod_name,
                      prod_details_image: prod_image,
                      prod_details_price: prod_price,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$$prod_price",
                    style: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              child: Image.asset(
                prod_image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
