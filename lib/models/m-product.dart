import 'package:flutter/material.dart';

class MProduct {
  final int id;
  final String title, description, category;
  final List<String> sizes, photoUrls;
  final List<Color> colors;
  final double rate, price, discount;
  bool isFavorite;

  final Color bgColor;

  MProduct({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.isFavorite,
    @required this.category,
    @required this.sizes,
    @required this.photoUrls,
    @required this.colors,
    @required this.rate,
    @required this.price,
    @required this.discount,
    @required this.bgColor,
  });
}
