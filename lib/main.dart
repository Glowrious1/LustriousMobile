import 'package:app_lustrious/pages/pagina_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:app_lustrious/pages/product_list_page.dart';
import 'package:app_lustrious/widgets/category_carrossel.dart';
import 'package:app_lustrious/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Tela inicial = Login
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const HomePage(),
        '/products': (context) => const ProductsPage(),
        '/cadastro': (context) => const Cadastro(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String userName =
        ModalRoute.of(context)!.settings.arguments as String? ?? 'Usuário';

    // 🛍️ Lista de produtos em oferta (exemplo)
    final List<Map<String, dynamic>> ofertas = [
      {
        "name": "Hidratante Facial",
        "image": "assets/imagem_pele_1.jpg",
        "oldPrice": 59.90,
        "newPrice": 39.90,
      },
      {
        "name": "Máscara Capilar",
        "image": "assets/imagem_cabelo_2.jpg",
        "oldPrice": 79.90,
        "newPrice": 49.90,
      },
      {
        "name": "Perfume Body Splash",
        "image": "assets/imagem_corpo_1.jpg",
        "oldPrice": 89.90,
        "newPrice": 59.90,
      },
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFDF3E7), // tom claro
              Color(0xFFF0D6A9), // tom dourado suave
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Saudação 👋
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Olá, $userName ",
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5A4633),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              "Seja bem-vindo(a) à Lustrious ",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF7A6A57),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white.withOpacity(0.8),
                        child: const Icon(
                          Icons.person,
                          color: Color(0xFF5A4633),
                          size: 28,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // 🌀 Carrossel de Categorias
                  const CategoryCarrossel(),

                  const SizedBox(height: 30),

                  // 🛍️ Seção de Ofertas Especiais
                  const Text(
                    "Ofertas Especiais ",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5A4633),
                    ),
                  ),
                  const SizedBox(height: 12),

                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ofertas.length,
                      itemBuilder: (context, index) {
                        final oferta = ofertas[index];
                        return Container(
                          width: 160,
                          margin: const EdgeInsets.only(right: 14),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(16)),
                                child: Image.asset(
                                  oferta["image"],
                                  height: 130,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      oferta["name"],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color(0xFF5A4633),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      "De R\$${oferta["oldPrice"].toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        decoration:
                                            TextDecoration.lineThrough,
                                      ),
                                    ),
                                    Text(
                                      "Por R\$${oferta["newPrice"].toStringAsFixed(2)}",
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
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
