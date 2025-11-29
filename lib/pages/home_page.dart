import 'package:flutter/material.dart';
import '../widgets/category_carrossel.dart';
import '../widgets/best_seller_carrossel.dart';
import '../models/product_data.dart'; // contém bestSellers
import '../models/product.dart';

class HomePage extends StatefulWidget {
  final String? userName;

  const HomePage({super.key, this.userName});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String query = ""; // Texto digitado na busca

  // ⭐ LISTA COMPLETA PARA PESQUISA
  final List<Product> sampleProducts = [
    Product(
      name: "Hidratante Facial",
      image: "assets/imagem_pele_creme_1.png",
      price: 39.90,
      category: "Pele",
      description: "Remove células mortas e impurezas.",
    ),
    Product(
      name: "Gloss Rosé Glow",
      image: "assets/imagem_rosto_gloss_1.png",
      price: 49.90,
      category: "Rosto",
      description: "Brilho intenso e hidratação.",
    ),
    Product(
      name: "Blush em Pó",
      image: "assets/imagem_rosto_blush_pó_1.png",
      price: 59.90,
      category: "Rosto",
      description: "Toque natural de cor.",
    ),
    // 👉 Pode adicionar TODOS os seus produtos!
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // ⭐ FILTRAR PRODUTOS
    final List<Product> searchResults = sampleProducts
        .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF9F5F0),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Lustrious",
          style: TextStyle(
            fontSize: size.width * 0.06,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () => Navigator.pushNamed(context, '/favorites'),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.userName != null && widget.userName!.isNotEmpty) ...[
              Text(
                "Olá,",
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Colors.black87,
                ),
              ),
              Text(
                widget.userName!,
                style: TextStyle(
                  fontSize: size.width * 0.07,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 20),
            ],

            // 🔍 BARRA DE PESQUISA FUNCIONAL
            TextField(
              onChanged: (value) {
                setState(() => query = value);
              },
              decoration: InputDecoration(
                hintText: "Buscar produtos...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ⭐ SE TIVER TEXTO, MOSTRA RESULTADOS DA PESQUISA
            if (query.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) {
                    final product = searchResults[index];

                    return ListTile(
                      leading: Image.asset(product.image, width: 50),
                      title: Text(product.name),
                      subtitle: Text("R\$ ${product.price.toStringAsFixed(2)}"),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/product-details',
                          arguments: product,
                        );
                      },
                    );
                  },
                ),
              )
            else ...[
              Text(
                "Categorias",
                style: TextStyle(
                  fontSize: size.width * 0.055,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              const CategoryCarrossel(),

              const SizedBox(height: 25),

              Text(
                "Mais vendidos",
                style: TextStyle(
                  fontSize: size.width * 0.055,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),

              Expanded(
                child: BestSellerCarrossel(products: bestSellers),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
