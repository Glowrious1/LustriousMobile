import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String? category =
        ModalRoute.of(context)!.settings.arguments as String?;

    final Map<String, String> categoryBanners = {
      "Pele": "assets/imagens_baner_2.png",
      "Rosto": "assets/imagens_baner_1.png",
      "Cabelo": "assets/imagens_baner_12.png",
      "Corpo": "assets/imagens_baner_3.png",
    };

    final bannerImage = categoryBanners[category] ?? "";

   final double screenWidth = MediaQuery.of(context).size.width;

    final filteredProducts =
        sampleProducts.where((p) => p.category == category).toList();

    final List<Map<String, String>> categories = [
      {"name": "Pele", "image": "assets/imagem_pele_1.jpg"},
      {"name": "Rosto", "image": "assets/imagem_rosto.jpg"},
      {"name": "Cabelo", "image": "assets/imagem_cabelo_2.jpg"},
      {"name": "Corpo", "image": "assets/imagem_corpo_1.jpg"},
    ];

    final otherCategories =
        categories.where((c) => c["name"] != category).toList();

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF5A4633)),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          category ?? "Produtos",
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w300,
            color: Color(0xFF5A4633),
          ),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFDF3E7),
              Color(0xFFF0D6A9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [
              if (bannerImage.isNotEmpty)
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                  child: Image.asset(
                    bannerImage,
                    width: double.infinity,
                    height: screenWidth * 0.45,
                    fit: BoxFit.cover,
                  ),
                ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    const SizedBox(height: 12),

                    SizedBox(
                      height: screenWidth * 0.32,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: otherCategories.length,
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: 14),
                        itemBuilder: (context, index) {
                          final c = otherCategories[index];

                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/products',
                                arguments: c["name"],
                              );
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    c["image"]!,
                                    width: screenWidth * 0.28,
                                    height: screenWidth * 0.28,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                Positioned(
                                  bottom: screenWidth * 0.06,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      c["name"]!,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: filteredProducts.isEmpty
                    ? const Text(
                        "Nenhum produto encontrado",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF5A4633),
                        ),
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: screenWidth < 500 ? 2 : 3,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio:
                              screenWidth < 500 ? 0.70 : 0.78,
                        ),
                        itemCount: filteredProducts.length,
                        itemBuilder: (context, index) {
                          final product = filteredProducts[index];

                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/product-details',
                                arguments: product,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.08),
                                    blurRadius: 6,
                                    offset: const Offset(2, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius:
                                          const BorderRadius.vertical(
                                        top: Radius.circular(16),
                                      ),
                                      child: product.image.startsWith("http")
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
                                    child: Column(
                                      children: [
                                        Text(
                                          product.name,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Color(0xFF5A4633),
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          "R\$ ${product.price.toStringAsFixed(2)}",
                                          style: const TextStyle(
                                            color: Colors.pink,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
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

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
