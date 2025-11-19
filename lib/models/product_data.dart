import 'product.dart';

// Lista principal de produtos
final List<Product> sampleProducts = [
  // PELE
  Product(
    name: "Creme Hidratante Facial",
    image: "assets/imagem_pele_creme_1.png",
    price: 59.90,
    category: "Pele",
  ),
  Product(
    name: "Sérum Anti-Idade",
    image: "assets/imagem_pele_serum_1.png",
    price: 129.90,
    category: "Pele",
  ),
  Product(
    name: "Protetor Solar FPS 70",
    image: "assets/imagem_pele_protetor_1.png",
    price: 89.90,
    category: "Pele",
  ),

  // ROSTO
  Product(
    name: "Base Líquida Matte",
    image: "assets/imagem_rosto_base_1.png",
    price: 89.90,
    category: "Rosto",
  ),
  Product(
    name: "Corretivo Alta Cobertura",
    image: "assets/imagem_rosto_corretivo_1.png",
    price: 59.90,
    category: "Rosto",
  ),

  // CABELO
  Product(
    name: "Shampoo Hidratante",
    image: "assets/imagem_cabelo_shampoo.png",
    price: 35.0,
    category: "Cabelo",
  ),
  Product(
    name: "Condicionador Nutritivo",
    image: "assets/imagem_cabelo_condicionador_1.png",
    price: 40.0,
    category: "Cabelo",
  ),

  // CORPO
  Product(
    name: "Hidratante Corporal",
    image: "assets/imagem_corpo_hidratante_2.png",
    price: 59.90,
    category: "Corpo",
  ),
  Product(
    name: "Bronzeador Corporal",
    image: "assets/imagem_corpo_bronzeador_1.png",
    price: 59.90,
    category: "Corpo",
  ),
];

// Lista de mais vendidos (opcional)
final List<Product> bestSellers = [
  sampleProducts[0],
  sampleProducts[1],
  sampleProducts[5],
  sampleProducts[6],
];
