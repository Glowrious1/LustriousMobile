import 'package:flutter/material.dart';
import '../models/product.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<Product> _favorites = [];

  List<Product> get favorites => _favorites;

  bool isFavorite(Product p) {
    return _favorites.any((item) => item.name == p.name);
  }

  void toggleFavorite(Product p) {
    if (isFavorite(p)) {
      _favorites.removeWhere((item) => item.name == p.name);
    } else {
      _favorites.add(p);
    }
    notifyListeners();
  }
}
