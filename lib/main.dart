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
      initialRoute: '/', 
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => HomePage(),
        '/products': (context) => const ProductsPage(),
        '/cadastro': (context) => const Cadastro(),
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
      key: _scaffoldKey,

      // 🌟 DRAWER COMPLETO
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 236, 200).withOpacity(0.95),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color:Color(0xFF5A4633),
              ),
              
                
              accountName: Text(
                userName,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("$userName@gmail.com"),
             currentAccountPicture: null,
             
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const Login()),
                  );
                },
                icon: const Icon(Icons.logout, color: Colors.white,),
                label: const Text(
      "Sair da conta",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 190, 154, 55),
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ),
          ],
        ),
      ),

      // 🌟 CORPO DA PÁGINA
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
            padding: const EdgeInsets.only(bottom: 220),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SAUDAÇÃO + ÍCONE DO PERFIL
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

                      // ⭐ ÍCONE QUE ABRE O DRAWER (AGORA FUNCIONANDO)
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

                  const CategoryCarrossel(),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: ofertas.map((oferta) {
                      return Expanded(
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
                                    oferta["image"],
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
                                      oferta["name"],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color(0xFF5A4633),
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "De R\$${oferta["oldPrice"].toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
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
                        ),
                      );
                    }).toList(),
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
