import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String? category =
        ModalRoute.of(context)!.settings.arguments as String?;

    // Banners por categoria
    final Map<String, String> categoryBanners = {
      "Pele": "assets/imagens_baner_2.png",
      "Rosto": "assets/imagens_baner_1.png",
      "Cabelo": "assets/imagens_baner_12.png",
      "Corpo": "assets/imagens_baner_3.png",
    };

    final bannerImage = categoryBanners[category] ?? "";

    final filteredProducts = sampleProducts
        .where((product) => product.category == category)
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          category ?? "Produtos",
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 165, 142, 66),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner da categoria
            if (bannerImage.isNotEmpty)
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
                child: Image.asset(
                  bannerImage,
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 16),

            // Grid de produtos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: filteredProducts.isEmpty
                  ? const Center(child: Text("Nenhum produto encontrado"))
                  : GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: filteredProducts.length,
                      itemBuilder: (context, index) {
                        final product = filteredProducts[index];

                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/product-details',
                              arguments: product, // AGORA MANDA O PRODUTO
                            );
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(12),
                                    ),
                                    child: product.image.startsWith("http")
                                        ? Image.network(
                                            product.image,
                                            fit: BoxFit.cover,
                                            errorBuilder: (context, error,
                                                stackTrace) {
                                              return const Center(
                                                  child: Icon(Icons.broken_image,
                                                      size: 32));
                                            },
                                          )
                                        : Image.asset(
                                            product.image,
                                            fit: BoxFit.cover,
                                          ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        product.name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "R\$ ${product.price.toStringAsFixed(2)}",
                                        style: const TextStyle(
                                            color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
