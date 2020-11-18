import 'package:flutter/cupertino.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final List<String> images;
  final List<String> colors;
  final double rating;
  final double price;
  final bool popular;
  final bool favorite;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.images,
    @required this.colors,
    @required this.rating,
    @required this.price,
    @required this.popular,
    @required this.favorite,
  });
}
