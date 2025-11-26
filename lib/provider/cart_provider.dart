import 'package:flutter/material.dart';
import '../models/product.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  double get totalPrice =>
      _items.fold(0, (total, item) => total + (item.product.price * item.quantity));

  void add(Product product) {
    // Verifica se já existe o produto no carrinho
    final index = _items.indexWhere((item) => item.product.name == product.name);

    if (index != -1) {
      // Incrementa quantidade
      _items[index].quantity++;
    } else {
      // Adiciona como novo item
      _items.add(CartItem(product: product, quantity: 1));
    }

    notifyListeners();
  }

  void remove(Product product) {
    _items.removeWhere((item) => item.product.name == product.name);
    notifyListeners();
  }

  void decrease(Product product) {
    final index = _items.indexWhere((item) => item.product.name == product.name);

    if (index != -1) {
      if (_items[index].quantity > 1) {
        _items[index].quantity--;
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
    }
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    this.quantity = 1,
  });
}
