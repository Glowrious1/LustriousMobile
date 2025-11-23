import 'package:flutter/material.dart';
import '../models/product.dart'; 
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
        title: Text(
          product.name,
          style: const TextStyle(
           color: Color.fromARGB(255, 3, 3, 1)
          ),
        ),
       backgroundColor: Colors.white, // mesmo tom de cima
      ),

      // 🌈 AQUI COLOQUEI O MESMO FUNDO GRADIENTE
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFDF3E7),
              Color.fromARGB(255, 255, 241, 216),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // IMAGEM PRINCIPAL
                Container(
                  height: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: product.image.startsWith('http')
                      ? Image.network(product.image, fit: BoxFit.contain)
                      : Image.asset(product.image, fit: BoxFit.contain),
                ),

                const SizedBox(height: 12),

                // MINIATURAS
                SizedBox(
                  height: 60,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    separatorBuilder: (_, __) => const SizedBox(width: 8),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[400]!),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: product.image.startsWith('http')
                            ? Image.network(product.image, fit: BoxFit.cover)
                            : Image.asset(product.image, fit: BoxFit.cover),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 16),

                // NOME DO PRODUTO
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 68, 53, 4),
                  ),
                ),

                const SizedBox(height: 8),

                // PREÇO
                Text(
                  "R\$ ${product.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 170, 87, 55),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                // BOTÃO
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
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // DESCRIÇÃO
                Text(
                  "Descrição do Produto",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 57, 44, 3),
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  product.description,
                  style: const TextStyle(
                    fontSize: 16,
                    color:  Color.fromARGB(255, 89, 68, 0),
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 50),

                // PRODUTOS RELACIONADOS
                LayoutBuilder(
                  builder: (context, constraints) {
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
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
