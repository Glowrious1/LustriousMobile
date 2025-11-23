import 'package:flutter/material.dart';
import 'package:app_lustrious/pages/login_page.dart';
import 'package:app_lustrious/pages/pagina_cadastro.dart';
import 'package:app_lustrious/pages/product_list_page.dart';
import 'package:app_lustrious/pages/product_details_page.dart';
import 'package:app_lustrious/widgets/category_carrossel.dart';
import 'package:app_lustrious/models/product.dart';

void main() {
  runApp(const MyApp());
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

        // 👉 Tela de Detalhes
        '/product-details': (context) => const ProductDetailPage(),
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

    // LISTA DE OFERTAS COMO PRODUTOS
    final List<Product> ofertas = [
      Product(
        name: "Hidratante Facial",
        image: "assets/imagem_pele_creme_1.png",
        price: 39.90,
        category: "Pele",
         description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
      ),
      Product(
        name: "Gloss - Rosé Glow",
        image: "assets/imagem_rosto_gloss_1.png",
        price: 49.90,
        category: "Rosto",
         description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
      ),
      Product(
        name: "Blush em Pó",
        image: "assets/imagem_rosto_blush_pó_1.png",
        price: 59.90,
        category: "Rosto",
         description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
      ),
    ];

    return Scaffold(
      key: _scaffoldKey,
drawer: Drawer(
  backgroundColor: const Color.fromARGB(255, 255, 236, 200).withOpacity(0.95),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      UserAccountsDrawerHeader(
        decoration: const BoxDecoration(
          color: Color(0xFF5A4633),
        ),
        accountName: Text(
          userName,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        accountEmail: Text("$userName@gmail.com"),
      ),

      ListTile(
        title: const Text(
          "Pele",
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/products', arguments: "Pele");
        },
      ),

      ListTile(
        title: const Text(
          "Cabelo",
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/products', arguments: "Cabelo");
        },
      ),

      ListTile(
        title: const Text(
          "Rosto",
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/products', arguments: "Rosto");
        },
      ),

      ListTile(
        title: const Text(
          "Corpo",
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/products', arguments: "Corpo");
        },
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
      ),
    ],
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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  // TÍTULO
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
                                fontSize: 25,
                                fontWeight: FontWeight.w100,
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
                      GestureDetector(
                        onTap: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
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

                  // CATEGORIAS
                  const CategoryCarrossel(),

                  const SizedBox(height: 30),

                  // OFERTAS (FUNCIONANDO!)
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
                                      width: double.infinity,
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
                                        textAlign: TextAlign.center,
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
                                          decoration: TextDecoration.lineThrough,
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
Container(
  margin: EdgeInsets.zero,
  padding: EdgeInsets.zero,
  width: MediaQuery.of(context).size.width,
  child: Image.asset(
    "assets/imagem_produtos.png",
    width: double.infinity,
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
