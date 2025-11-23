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
            color:  Color.fromARGB(255, 80, 63, 8),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 229, 208, 138),
      ),
      body: SingleChildScrollView(
child: Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // IMAGEM PRINCIPAL COM BORDAS ARREDONDADAS
      Container(
        height: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), // borda arredondada
          color: Colors.grey[200], // cor de fundo caso a imagem não preencha
        ),
        clipBehavior: Clip.antiAlias, // garante que a imagem siga a borda arredondada
        child: product.image.startsWith('http')
            ? Image.network(
                product.image,
                fit: BoxFit.contain,
              )
            : Image.asset(
                product.image,
                fit: BoxFit.contain,
              ),
      ),

      const SizedBox(height: 12),

      // MINIATURAS DO PRODUTO (4 fotos)
      SizedBox(
        height: 60,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 4, // 4 miniaturas
          separatorBuilder: (_, __) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            // aqui estou usando a mesma imagem para exemplo
            // você pode substituir por product.images[index] se tiver lista de imagens
            return Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[400]!), // borda da miniatura
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

            
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:  Color.fromARGB(255, 68, 53, 4), // cor alterada
                ),
              ),

              const SizedBox(height: 8),

             
              Text(
                "R\$ ${product.price.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 187, 95, 58), // cor alterada
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

const SizedBox(height: 20),

Text(
  "Descrição do Produto",
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 68, 53, 4),
  ),
),

const SizedBox(height: 8),

Text(
  product.description,
  style: const TextStyle(
    fontSize: 16,
    color: Color.fromARGB(221, 117, 69, 10),
    height: 1.4,
  ),
),
              const SizedBox(height: 50),

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
