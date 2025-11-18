import 'product.dart';

// LISTA PRINCIPAL DE PRODUTOS
final List<Product> sampleProducts = [

  // CATEGORIA: PELE
  Product(
    name: "Creme Hidratante Corporal",
    image: "https://i.imgur.com/Z7a8E3L.jpeg",
    price: 29.90,
    category: "Pele",
  ),
  Product(
    name: "Sérum Facial Glow",
    image: "https://i.imgur.com/8ZQZy2L.jpeg",
    price: 49.90,
    category: "Pele",
  ),
  Product(
    name: "Esfoliante Corporal de Açúcar",
    image: "https://i.imgur.com/DO3H1v5.jpeg",
    price: 34.90,
    category: "Pele",
  ),

  // CATEGORIA: CABELO
  Product(
    name: "Shampoo Nutritivo",
    image: "https://i.imgur.com/vqqs8BC.jpeg",
    price: 22.50,
    category: "Cabelo",
  ),
  Product(
    name: "Máscara Capilar Hidratante",
    image: "https://i.imgur.com/Ybb3Tzm.jpeg",
    price: 35.00,
    category: "Cabelo",
  ),

  // CATEGORIA: CORPO
  Product(
    name: "Bruma Corporal Perfumada",
    image: "https://i.imgur.com/yXH6gCJ.jpeg",
    price: 39.90,
    category: "Corpo",
  ),
  Product(
    name: "Óleo Corporal Iluminador",
    image: "https://i.imgur.com/0mrXw0A.jpeg",
    price: 44.90,
    category: "Corpo",
  ),
];

// LISTA DE MAIS VENDIDOS
final List<Product> bestSellers = [
  sampleProducts[0],
  sampleProducts[1],
  sampleProducts[5],
  sampleProducts[6],
];
