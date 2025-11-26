import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'package:app_lustrious/pages/cart_page.dart';
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
            color: Color.fromARGB(255, 3, 3, 1),
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF5A4633)),
          onPressed: () => Navigator.pop(context),
        ),
      ),

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

                // IMAGEM PRINCIPAL COM LUPA
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ImageMagnifier(image: product.image),
                      ),
                    );
                  },
                  child: Container(
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

                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 68, 53, 4),
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "R\$ ${product.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 170, 87, 55),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartPage(product: product),
                        ),
                      );
                    },
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
                    color: Color.fromARGB(255, 89, 68, 0),
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 50),

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

// LUPA COM FUNDO TRANSPARENTE E SETA DE VOLTAR
class ImageMagnifier extends StatefulWidget {
  final String image;

  const ImageMagnifier({super.key, required this.image});

  @override
  State<ImageMagnifier> createState() => _ImageMagnifierState();
}

class _ImageMagnifierState extends State<ImageMagnifier> {
  Offset position = Offset.zero;
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // fundo totalmente transparente

      body: GestureDetector(
        onPanStart: (details) {
          setState(() {
            show = true;
            position = details.localPosition;
          });
        },
        onPanUpdate: (details) {
          setState(() {
            position = details.localPosition;
          });
        },
        onPanEnd: (_) {
          setState(() => show = false);
        },
        child: Stack(
          children: [
            Center(
              child: InteractiveViewer(
                minScale: 1,
                maxScale: 4,
                child: widget.image.startsWith('http')
                    ? Image.network(widget.image)
                    : Image.asset(widget.image),
              ),
            ),

            // ⭐ LUPA REAL
            if (show)
              Positioned(
                left: position.dx - 75,
                top: position.dy - 75,
                child: ClipOval(
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Transform.scale(
                      scale: 2.5,
                      child: Transform.translate(
                        offset: Offset(-position.dx, -position.dy),
                        child: widget.image.startsWith('http')
                            ? Image.network(widget.image)
                            : Image.asset(widget.image),
                      ),
                    ),
                  ),
                ),
              ),

            // 🔙 SETA DE VOLTAR
            Positioned(
              top: 40,
              left: 16,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5), // leve fundo para destacar a seta
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
