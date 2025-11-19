import 'package:flutter/material.dart';
import '../models/product.dart'; // importa a lista sampleProducts
import '../widgets/product_card.dart';
import 'dart:math';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;

     List<Product> relatedProducts = sampleProducts
        .where((p) => p.name != product.name)
        .toList();

    relatedProducts.shuffle(Random());

    relatedProducts = relatedProducts.take(2).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: const Color.fromARGB(255, 197, 145, 95),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IMAGEM PRINCIPAL
              product.image.startsWith('http')
                  ? Image.network(
                      product.image,
                      height: 260,
                      fit: BoxFit.contain,
                    )
                  : Image.asset(
                      product.image,
                      height: 260,
                      fit: BoxFit.contain,
                    ),

              const SizedBox(height: 16),

              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5A4633),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "R\$ ${product.price.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB89E5C),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text(
                    "Adicionar ao carrinho",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Produtos Relacionados",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5A4633),
                ),
              ),

              const SizedBox(height: 16),

              // CARROSSEL RESPONSIVO
              LayoutBuilder(builder: (context, constraints) {
                double itemWidth = constraints.maxWidth * 0.48;

                return SizedBox(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: relatedProducts.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: itemWidth,
                        child: ProductCard(product: relatedProducts[index]),
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
