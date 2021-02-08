import 'package:flutter/material.dart';

import '../res/list.dart';
import '../models/m-product.dart';

class ProvProducts with ChangeNotifier {
  List<MProduct> _products = dummyProducts;
  List<MProduct> get getProducts => _products;

  void setFavoriteProduct(MProduct product) {
    product.isFavorite = !product.isFavorite;
    notifyListeners();
  }
}
