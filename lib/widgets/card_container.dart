import 'package:flutter/material.dart';
import 'package:breakout_room_8_pixel/models/product.dart';

class CardContainer extends StatelessWidget {
  const CardContainer(
      {required this.product, required this.onSelect, super.key});

  final Product product;
  final void Function(BuildContext context, Product product) onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            onSelect(context, product);
          },
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: product.color,
                  height: 180,
                  child: Center(
                      child: Text(
                    product.subtitle,
                    style: const TextStyle(fontSize: 50, color: Colors.white),
                  )),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: SizedBox(
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .start, // optional: center the texts vertically
                    children: [
                      Text(
                        product.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(product.description),
                      Text("price: ${product.price}"),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: List.generate(3, (index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Icon(
                              index < product.rating
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.red,
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}