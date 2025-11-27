import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/favorites_provider.dart';
import '../widgets/product_card.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final fav = context.watch<FavoritesProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favoritos"),
        backgroundColor: Colors.white,
      ),

      body: fav.favorites.isEmpty
          ? const Center(
              child: Text(
                "Nenhum item favoritado ainda 😢",
                style: TextStyle(fontSize: 18),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.70,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: fav.favorites.length,
              itemBuilder: (context, index) {
                final product = fav.favorites[index];
                return ProductCard(product: product);
              },
            ),
    );
  }
}
