import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import '../provider/cart_provider.dart';
import 'cart_page.dart';
import 'dart:math';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;

    /// EXEMPLO DE LISTA PARA "RELACIONADOS"
    /// Você pode substituir pelo seu próprio array real.
    List<Product> sampleProducts = [
      Product(
        name: "Hidratante Facial",
        image: "assets/imagem_pele_creme_1.png",
        price: 39.90,
        description: "Hidratação profunda para todos os tipos de pele.",
      ),
      Product(
        name: "Gloss Rosé Glow",
        image: "assets/imagem_rosto_gloss_1.png",
        price: 49.90,
        description: "Brilho suave com efeito glow.",
      ),
      Product(
        name: "Blush em Pó",
        image: "assets/imagem_rosto_blush_pó_1.png",
        price: 59.90,
        description: "Blush confortável com longa duração.",
      ),
    ];

    List<Product> relatedProducts =
        sampleProducts.where((p) => p.name != product.name).toList();

    relatedProducts.shuffle(Random());
    relatedProducts = relatedProducts.take(2).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.name,
          style: const TextStyle(color: Colors.black87),
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
            colors: [Color(0xFFFDF3E7), Color(0xFFFFF1D8)],
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
                /// 📸 IMAGEM PRINCIPAL
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
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                /// ⭐ TÍTULO
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5A4633),
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "R\$ ${product.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFAF7046),
                  ),
                ),

                const SizedBox(height: 20),

                /// 🛒 BOTÃO DE COMPRAR
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<CartProvider>().add(product);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartPage(),
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

                const SizedBox(height: 25),

                /// 📘 DESCRIÇÃO
                const Text(
                  "Descrição do Produto",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A3A1A),
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  product.description,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.4,
                    color: Color(0xFF5E4A1A),
                  ),
                ),

                const SizedBox(height: 40),

                /// ⭐ PRODUTOS RELACIONADOS
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
                            child: ProductCard(
                              product: relatedProducts[index],
                            ),
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

/// 🔍 LUPA / ZOOM
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
      backgroundColor: Colors.transparent,

      body: GestureDetector(
        onPanStart: (d) {
          setState(() {
            show = true;
            position = d.localPosition;
          });
        },
        onPanUpdate: (d) {
          setState(() => position = d.localPosition);
        },
        onPanEnd: (_) => setState(() => show = false),

        child: Stack(
          children: [
            Center(
              child: InteractiveViewer(
                maxScale: 4,
                minScale: 1,
                child: Image.asset(widget.image),
              ),
            ),

            /// LUPA
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
                        child: Image.asset(widget.image),
                      ),
                    ),
                  ),
                ),
              ),

            /// VOLTAR
            Positioned(
              top: 40,
              left: 16,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
