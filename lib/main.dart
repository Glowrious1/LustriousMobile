import 'package:flutter/material.dart';

import 'package:app_lustrious/pages/login_page.dart';
import 'package:app_lustrious/pages/pagina_cadastro.dart';
import 'package:app_lustrious/pages/product_list_page.dart';
import 'package:app_lustrious/pages/product_details_page.dart';
import 'package:app_lustrious/pages/cart_page.dart';
import 'package:app_lustrious/pages/favorites_page.dart';

import 'package:app_lustrious/widgets/category_carrossel.dart';

import 'package:app_lustrious/models/product.dart';

import 'package:app_lustrious/provider/cart_provider.dart';
import 'package:app_lustrious/provider/favorites_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
      ],
      child: const MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => HomePage(),
        '/products': (context) => const ProductsPage(),
        '/cadastro': (context) => const Cadastro(),
        '/product-details': (context) => const ProductDetailPage(),
        '/cart': (context) => const CartPage(),
        '/favorites': (context) => const FavoritesPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final String userName =
        ModalRoute.of(context)!.settings.arguments as String? ?? 'Usuário';

    // LISTA DE OFERTAS
    final List<Product> ofertas = [
      Product(
        name: "Hidratante Facial",
        image: "assets/imagem_pele_creme_1.png",
        price: 39.90,
        category: "Pele",
        description:
            "Remove células mortas e impurezas, deixando a pele mais lisa e uniforme.",
      ),
      Product(
        name: "Gloss Rosé Glow",
        image: "assets/imagem_rosto_gloss_1.png",
        price: 49.90,
        category: "Rosto",
        description:
            "Brilho intenso e hidratação para os lábios, com acabamento rosado.",
      ),
      Product(
        name: "Blush em Pó",
        image: "assets/imagem_rosto_blush_pó_1.png",
        price: 59.90,
        category: "Rosto",
        description:
            "Blush suave que proporciona um toque natural de cor à pele.",
      ),
    ];

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFFDF3E7),

      // --------------------- MENU LATERAL ---------------------
      drawer: Drawer(
        backgroundColor:
            const Color.fromARGB(255, 255, 236, 200).withOpacity(0.95),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF5A4633)),
              accountName: Text(
                userName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("$userName@gmail.com"),
            ),

            // Categorias
            ListTile(
              title: const Text("Pele", style: TextStyle(fontSize: 18)),
              onTap: () => Navigator.pushNamed(context, '/products',
                  arguments: "Pele"),
            ),
            ListTile(
              title: const Text("Cabelo", style: TextStyle(fontSize: 18)),
              onTap: () => Navigator.pushNamed(context, '/products',
                  arguments: "Cabelo"),
            ),
            ListTile(
              title: const Text("Rosto", style: TextStyle(fontSize: 18)),
              onTap: () => Navigator.pushNamed(context, '/products',
                  arguments: "Rosto"),
            ),
            ListTile(
              title: const Text("Corpo", style: TextStyle(fontSize: 18)),
              onTap: () => Navigator.pushNamed(context, '/products',
                  arguments: "Corpo"),
            ),

            ListTile(
              title: const Text("Sacola", style: TextStyle(fontSize:18)),
              onTap: () => Navigator.pushNamed(context, '/cart',
              arguments: "Carrinho"),
            ),

            ListTile(
              title: const Text("Favoritos", style: TextStyle(fontSize:18)),
              onTap: () => Navigator.pushNamed(context, '/favorites',
              arguments: "Favoritos"),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const Login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 190, 154, 55),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  "Sair da conta",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      // --------------------- TELA ---------------------
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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --------------------- HEADER ---------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Nome do usuário
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Olá, $userName",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w100,
                              color: Color(0xFF5A4633),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "Seja bem-vindo(a) à Lustrious",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF7A6A57),
                            ),
                          ),
                        ],
                      ),

                      // Botão Menu
                      GestureDetector(
                        onTap: () => _scaffoldKey.currentState?.openDrawer(),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.white.withOpacity(0.8),
                          child: const Icon(
                            Icons.person,
                            color: Color(0xFF5A4633),
                            size: 28,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // --------------------- CATEGORIAS ---------------------
                  const CategoryCarrossel(),

                  const SizedBox(height: 30),

                  // --------------------- OFERTAS ---------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: ofertas.map((product) {
                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/product-details',
                              arguments: product,
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
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
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(16)),
                                    child: Image.asset(
                                      product.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        product.name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Color(0xFF5A4633),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      const Text(
                                        "Promoção",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                      Text(
                                        "Por R\$${product.price.toStringAsFixed(2)}",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 20),

                  // Imagem inferior
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/imagem_produtos.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
