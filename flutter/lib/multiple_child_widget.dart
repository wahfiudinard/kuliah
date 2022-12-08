import 'package:flutter/material.dart';

import 'product_widget.dart';

class MultipleChildWidget extends StatelessWidget {
  const MultipleChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const[
        ProductWidget(
          image: 'assets/images/iphone.jpg',
          name: 'iPhone',
          description: 'iPhone is the stylist phone ever',
          price: 1000,
        ),
        ProductWidget(
          image: 'assets/images/laptop.jpg',
          name: 'Laptop',
          description: 'Laptop keren',
          price: 2000,
        ),
        ProductWidget(
          image: 'assets/images/pixel.jpg',
          name: 'Pixel',
          description: 'Pixel keren',
          price: 1500,
        ),
        ProductWidget(
          image: 'assets/images/tablet.jpg',
          name: 'Tablet',
          description: 'Tablet obat',
          price: 2500,
        ),
        ProductWidget(
          image: 'assets/images/floppy.jpg',
          name: 'Floppy',
          description: 'Floppy ...',
          price: 500,
        ),
        ProductWidget(
          image: 'assets/images/pendrive.jpg',
          name: 'Pendrive',
          description: 'Pendrive',
          price: 900,
        ),
      ],
    );
  }
}