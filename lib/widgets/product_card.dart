import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../provider/favorites_provider.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/product-details',
          arguments: product,
        );
      },
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            elevation: 4,
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
                    child: product.image.startsWith('http')
                        ? Image.network(
                            product.image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          )
                        : Image.asset(
                            product.image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    product.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5A4633),
                    ),
                  ),
                ),

                Text(
                  "R\$ ${product.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),
              ],
            ),
          ),

          /// ❤️ ÍCONE DO CORAÇÃO
          Positioned(
            top: 8,
            right: 8,
            child: Consumer<FavoritesProvider>(
              builder: (context, fav, child) {
                final isFav = fav.isFavorite(product);

                return GestureDetector(
                  onTap: () => fav.toggleFavorite(product),
                  child: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                    size: 28,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
