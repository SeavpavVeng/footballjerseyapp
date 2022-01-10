import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final prod_details_name;
  final prod_details_image;
  final prod_details_price;

  ProductDetails(
      {this.prod_details_name,
      this.prod_details_image,
      this.prod_details_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.prod_details_image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  ListTile(
                    leading: Text(
                      widget.prod_details_name,
                      style: const TextStyle(
                          fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$${widget.prod_details_price}",
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        textColor: Colors.red,
                        elevation: 0.7,
                        child: Row(
                          children: const [
                            Expanded(
                                child: Text(
                              "Size",
                              style: TextStyle(fontSize: 24),
                            )),
                            Expanded(
                                child: Icon(
                              Icons.arrow_drop_down,
                              size: 24,
                            )),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        textColor: Colors.red,
                        elevation: 0.7,
                        child: Row(
                          children: const [
                            Expanded(
                                child: Text(
                              "QTY",
                              style: TextStyle(fontSize: 24),
                            )),
                            Expanded(
                                child: Icon(
                              Icons.arrow_drop_down,
                              size: 24,
                            )),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        textColor: Colors.red,
                        elevation: 0.7,
                        child: Row(
                          children: const [
                            Expanded(
                                child: Text(
                              "Brend",
                              style: TextStyle(fontSize: 24),
                            )),
                            Expanded(
                                child: Icon(
                              Icons.arrow_drop_down,
                              size: 24,
                            )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
