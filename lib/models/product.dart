import 'package:flutter/material.dart';

class Product {
  const Product(
      {required this.title,
      required this.subtitle,
      required this.color,
      required this.description,
      required this.price,
      required this.rating});

  final String title;
  final String subtitle;
  final Color color;
  final String description;
  final double price;
  final int rating;
}
