class Product {
  final String name;
  final String image;
  final double price;
  final String category;

  Product({required this.name, 
  required this.image, 
  required this.price, 
  required this.category});
}
final List<Product> sampleProducts = [
  // ================== PELE ==================
  Product(
    name: "Creme Hidratante Facial",
    image: "assets/imagem_pele_creme_1.png",
    price: 59.9,
    category: "Pele",
  ),
  Product(
    name: "Sérum Anti-Idade",
    image: "assets/imagem_pele_serum_1.png",
    price: 129.9,
    category: "Pele",
  ),
  Product(
    name: "Protetor Solar FPS 70",
    image: "assets/imagem_pele_protetor_1.png",
    price: 89.9,
    category: "Pele",
  ),
  Product(
    name: "Gel de Limpeza Facial",
    image: "assets/imagem_pele_hidratante_1.png",
    price: 39.9,
    category: "Pele",
  ),
  Product(
    name: "Tônico Adstringente",
    image: "assets/imagem_serum_2.png",
    price: 49.9,
    category: "Pele",
  ),
  Product(
    name: "Máscara de Argila Verde",
    image: "assets/imagem_pele_creme_1.png",
    price: 29.9,
    category: "Pele",
  ),
  Product(
    name: "Esfoliante Facial Suave",
    image: "assets/imagem_pele_esfoliante_2.png",
    price: 34.9,
    category: "Pele",
  ),
  Product(
    name: "Água Micelar",
    image: "assets/imagem_pele_agua_1.png",
    price: 44.9,
    category: "Pele",
  ),
  Product(
    name: "Sérum Vitamina C",
    image: "assets/imagem_pele_serum_2.png",
    price: 119.9,
    category: "Pele",
  ),
  Product(
    name: "Hidratante em Gel Noturno",
    image: "assets/imagem_pele_esfoliante_2.png",
    price: 64.9,
    category: "Pele",
  ),

  // ================== ROSTO ==================
  Product(
    name: "Base Líquida Matte",
    image: "assets/imagem_rosto_base_1.png",
    price: 89.9,
    category: "Rosto",
  ),
  Product(
    name: "Corretivo Alta Cobertura",
    image: "assets/imagem_rosto_corretivo_1.png",
    price: 59.9,
    category: "Rosto",
  ),
  Product(
    name: "Pó Compacto Translúcido",
    image: "assets/imagem_rosto_po_compacto_1.png",
    price: 49.9,
    category: "Rosto",
  ),
  Product(
    name: "Blush Pó",
    image: "assets/imagem_rosto_blush_pó_2.png",
    price: 39.9,
    category: "Rosto",
  ),
  Product(
    name: "Bruma Glow",
    image: "assets/imagem_rosto_bruma_2.png",
    price: 39.9,
    category: "Rosto",
  ),Product(
    name: "Bruma com Glitter",
    image: "assets/imagem_rosto_bruma_1.png",
    price: 39.9,
    category: "Rosto",
  ),
  Product(
    name: "Pó Solto Translúcido",
    image: "assets/imagem_rosto_po_solto_1.png",
    price: 49.9,
    category: "Rosto",
  ),
  Product(
    name: "Blush Líquido",
    image: "assets/imagem_rosto_blush_pó_1.png",
    price: 39.9,
    category: "Rosto",
  ),
  Product(
    name: "Iluminador Líquido",
    image: "assets/imagem_rosto_iluminador_2.png",
    price: 54.9,
    category: "Rosto",
  ),
  Product(
    name: "Iluminador Líquido Glow",
    image: "assets/imagem_rosto_iluminador_3.png",
    price: 54.9,
    category: "Rosto",
  ),
  Product(
    name: "Batom Vermelho Luxo",
    image: "",
    price: 49.9,
    category: "Rosto",
  ),
  Product(
    name: "Gloss Labial Vermelho",
    image: "assets/imagem_rosto_batao_1.png",
    price: 29.9,
    category: "Rosto",
  ),
    Product(
    name: "Gloss Labial Transparente",
    image: "assets/imagem_rosto_gloss_6.png",
    price: 29.9,
    category: "Rosto",
  ),
  Product(
    name: "Blush Bastão",
    image: "assets/imagem_rosto_blush_bastão.png",
    price: 39.9,
    category: "Rosto",
  ),
  Product(
    name: "Paleta de Sombras Neutras",
    image: "assets/imagem_rosto_sombra_1.png",
    price: 99.9,
    category: "Rosto",
  ),
  Product(
    name: "Paleta de Sombras Neutras Com Glitter",
    image: "assets/imagem_rosto_sombra_1.png",
    price: 99.9,
    category: "Rosto",
  ),
  Product(
    name: "Delineador Líquido Preto",
    image: "assets/imagem_rosto_deliniador_1.png",
    price: 34.9,
    category: "Rosto",
  ),
  Product(
    name: "Máscara de Cílios Volume",
    image: "assets/imagem_rosto_rimel_1.png",
    price: 69.9,
    category: "Rosto",
  ),
   Product(
    name: "Base Líquida Matte",
    image: "assets/imagem_rosto_base_liquida_2.png",
    price: 89.9,
    category: "Rosto",
  ),
   Product(
    name: "Base Líquida Matte",
    image: "assets/imagem_rosto_base_liquida.png",
    price: 89.9,
    category: "Rosto",
  ),

  // ================== CABELO ==================
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
  Product(
    name: "Máscara Capilar Reconstrução",
    image: "assets/imagem_cabelo_hidratante_1.png",
    price: 79.9,
    category: "Cabelo",
  ),
  Product(
    name: "Óleo Capilar Argan",
    image: "assets/imagem_cabelo_oleo_1.png",
    price: 59.9,
    category: "Cabelo",
  ),
  Product(
    name: "Protetor Térmico ",
    image: "assets/imagem_cabelo_protetor_1.png",
    price: 49.9,
    category: "Cabelo",
  ),
  Product(
    name: "Spray Texturizador",
    image: "https://via.placeholder.com/150",
    price: 39.9,
    category: "Cabelo",
  ),
  Product(
    name: "Tônico Capilar Crescimento",
    image: "https://via.placeholder.com/150",
    price: 69.9,
    category: "Cabelo",
  ),
  Product(
    name: "Shampoo Anticaspa",
    image: "https://via.placeholder.com/150",
    price: 29.9,
    category: "Cabelo",
  ),
  Product(
    name: "Condicionador Reconstrutor",
    image: "https://via.placeholder.com/150",
    price: 44.9,
    category: "Cabelo",
  ),
  Product(
    name: "Creme de Pentear Cachos",
    image: "https://via.placeholder.com/150",
    price: 34.9,
    category: "Cabelo",
  ),

  // ================== CORPO ==================
  Product(
    name: "Hidratante Corporal",
    image: "https://via.placeholder.com/150",
    price: 59.9,
    category: "Corpo",
  ),
  Product(
    name: "Óleo Corporal Perfumado",
    image: "https://via.placeholder.com/150",
    price: 69.9,
    category: "Corpo",
  ),
  Product(
    name: "Sabonete Líquido Esfoliante",
    image: "https://via.placeholder.com/150",
    price: 34.9,
    category: "Corpo",
  ),
  Product(
    name: "Desodorante Spray",
    image: "https://via.placeholder.com/150",
    price: 22.9,
    category: "Corpo",
  ),
  Product(
    name: "Loção Firmadora",
    image: "https://via.placeholder.com/150",
    price: 79.9,
    category: "Corpo",
  ),
  Product(
    name: "Creme para Mãos",
    image: "https://via.placeholder.com/150",
    price: 24.9,
    category: "Corpo",
  ),
  Product(
    name: "Manteiga Corporal",
    image: "https://via.placeholder.com/150",
    price: 54.9,
    category: "Corpo",
  ),
  Product(
    name: "Esfoliante Corporal",
    image: "https://via.placeholder.com/150",
    price: 39.9,
    category: "Corpo",
  ),
  Product(
    name: "Spray Hidratante Pós-Sol",
    image: "https://via.placeholder.com/150",
    price: 44.9,
    category: "Corpo",
  ),
  Product(
    name: "Perfume Body Splash",
    image: "https://via.placeholder.com/150",
    price: 89.9,
    category: "Corpo",
  ),
];
