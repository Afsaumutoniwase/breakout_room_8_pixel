import 'package:flutter/material.dart';
import 'package:pixels/data/dummy_data.dart';
import 'package:pixels/models/product.dart';
import 'package:pixels/screens/product_detail_screen.dart';
import 'package:pixels/widgets/card_container.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    void selectProduct(BuildContext context, Product product) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (ctx) => ProductDetailScreen(
                    product: product,
                  )));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ListView(
        children: [
          ...pixelList.map((product) =>
              CardContainer(product: product, onSelect: selectProduct))
        ],
      ),
    );
  }
}
