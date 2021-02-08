import 'package:design_ui/models/m-product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/prov-products.dart';

class WIconFavorite extends StatelessWidget {
  final MProduct product;

  WIconFavorite({
    @required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProvProducts>(
      builder: (_, data, ch) {
        return GestureDetector(
          onTap: () {
            data.setFavoriteProduct(product);
          },
          child: CircleAvatar(
            backgroundColor: product.isFavorite ? Colors.red : Colors.white,
            child: Icon(Icons.favorite,
                color: product.isFavorite ? Colors.white : Colors.grey),
            minRadius: 16,
          ),
        );
      },
    );
  }
}
