import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
    {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.price});

  final String image;
  final String name;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 120,
          child: Card(
            child: Row(
              children: [Image.asset(image),
              Expanded(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(name),
                    Text(description),
                    Text("Price : $price"),
                  ],
                ),
              )
              ],
            ),
          ),
        );
  }
}