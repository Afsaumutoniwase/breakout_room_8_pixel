import 'package:flutter/material.dart';
import 'package:breakout_room_8_pixel/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: product.color, // Sets the AppBar background to blue
        centerTitle: true, // Centers the title
        title: Text(
          product.title,
          style:
              const TextStyle(color: Colors.white), // Ensures text is visible
        ),
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back, color: Colors.white), // Back button
          onPressed: () {
            Navigator.pop(context); // Navigates back when pressed
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Product Header with Background Color
            Container(
              width: double.infinity,
              height: 300,
              color: product.color,
              alignment: Alignment.center,
              child: Text(
                product.subtitle,
                style: const TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),

            // Product Details Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    product.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    product.price.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),

                  // Star Ratings
                  Align(
                    alignment:
                        Alignment.centerRight, // Aligns icons to the right
                    child: Row(
                      mainAxisSize:
                          MainAxisSize.min, // Ensures Row takes minimal width
                      children: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10), // Adds space between icons
                          child: Icon(
                            index < product.rating
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.red,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}