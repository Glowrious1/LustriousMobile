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
    image: "assets/imagem_pele_serum_2.png",
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
    image: "assets/imagem_rosto_batao_1.png",
    price: 49.9,
    category: "Rosto",
  ),
  Product(
    name: "Gloss Labial Vermelho",
    image: "assets/imagem_rosto_gloss_1.png",
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
    image: "assets/imagem_rosto_sombra_2.png",
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
    name: "Shampoo Hidratante",
    image: "assets/imagem_cabelo_shampoo_2.png",
    price: 35.0,
    category: "Cabelo",
  ),
  Product(
    name: "Condicionador Nutritivo",
    image: "assets/imagem_cabelo_condicionador_2.png",
    price: 40.0,
    category: "Cabelo",
  ),
  Product(
    name: "Máscara Capilar Reconstrução",
    image: "assets/imagem_cabelo_hidratante_2.png",
    price: 79.9,
    category: "Cabelo",
  ),
  Product(
    name: "Óleo Capilar Argan",
    image: "assets/imagem_cabelo_oleo_2.png",
    price: 59.9,
    category: "Cabelo",
  ),
  Product(
    name: "Protetor Térmico ",
    image: "assets/imagem_cabelo_protetor_2.png",
    price: 49.9,
    category: "Cabelo",
  ),
  Product(
    name: "Spray Texturizador",
    image: "assets/imagem_pele_serum_1.png",
    price: 39.9,
    category: "Cabelo",
  ),
  Product(
    name: "Tônico Capilar Crescimento",
    image: "assets/imagem_pele_serum_2.png",
    price: 69.9,
    category: "Cabelo",
  ),
  Product(
    name: "Shampoo Crystal Shine",
    image: "assets/imagem_cabelo_shampoo_3.png",
    price: 29.9,
    category: "Cabelo",
  ),
  Product(
    name: "Condicionador Crystal Shine",
    image: "assets/imagem_cabelo_condicionador_3.png",
    price: 44.9,
    category: "Cabelo",
  ),
  Product(
    name: "Óleo Nutri Glow",
    image: "assets/imagem_cabelo_oleo_3.png",
    price: 34.9,
    category: "Cabelo",
  ),
  Product(
    name: "Shampoo Strength & Growth",
    image: "assets/imagem_cabelo_shampoo_4.png",
    price: 34.9,
    category: "Cabelo",
  ),
  Product(
    name: "Condicionador Strength & Growth",
    image: "assets/imagem_cabelo_condicionador_4.png",
    price: 34.9,
    category: "Cabelo",
  ),
  Product(
    name: "Óleo ",
    image: "assets/imagem_cabelo_oleo_4.png",
    price: 34.9,
    category: "Cabelo",
  ),
  Product(
    name: "Shampoo para Cachos ",
    image: "assets/imagem_cabelo_shampoo_5.png",
    price: 34.9,
    category: "Cabelo",
  ),
Product(
    name: "Condicionador para Cachos",
    image: "assets/imagem_cabelo_condicionador_5.png",
    price: 34.9,
    category: "Cabelo",
  ),


  // ================== CORPO ==================
  Product(
    name: "Hidratante Corporal",
    image: "assets/imagem_corpo_hidratante_2.png",
    price: 59.9,
    category: "Corpo",
  ),
   Product(
    name: "Bronzeador Corporal",
    image: "assets/imagem_corpo_bronzeador_1.png",
    price: 59.9,
    category: "Corpo",
  ),
  Product(
    name: "Óleo Corporal Perfumado",
    image: "assets/imagem_corpo_oleo_1.png",
    price: 69.9,
    category: "Corpo",
  ),
    Product(
    name: "Spray Corporal",
    image: "assets/imagem_corpo_spray_1.png",
    price: 39.9,
    category: "Corpo",
  ),
   Product(
    name: "Esfoliante de Pé",
    image: "assets/imagem_corpo_esfoliante_1.png",
    price: 39.9,
    category: "Corpo",
  ),
  Product(
    name: "Sabonete Líquido Esfoliante",
    image: "assets/imagem_corpo_esfoliante_5.png",
    price: 34.9,
    category: "Corpo",
  ),
    Product(
    name: "Gel Corporal",
    image: "assets/imagem_corpo_gel_1.png",
    price: 39.9,
    category: "Corpo",
  ),
  Product(
    name: "Bory Splash",
    image: "assets/imagem_corpo_bory_1.png",
    price: 22.9,
    category: "Corpo",
  ),
  Product(
    name: "Bruma Loção Firmadora",
    image: "assets/imagem_corpo_bruma_1.png",
    price: 79.9,
    category: "Corpo",
  ),
  Product(
    name: "Iluminador Corporal",
    image: "assets/imagem_corpo_iluminador_1.png",
    price: 22.9,
    category: "Corpo",
  ),
  Product(
    name: "Creme para Mãos",
    image: "assets/imagem_corpo_esfoliante_2.png",
    price: 24.9,
    category: "Corpo",
  ),
  Product(
    name: "Mini Bory Splash",
    image: "assets/imagem_corpo_minibory_1.png",
    price: 54.9,
    category: "Corpo",
  ),
  Product(
    name: "Esfoliante Corporal",
    image: "assets/imagem_corpo_esfoliante_4.png",
    price: 39.9,
    category: "Corpo",
  ),
  Product(
    name: "Spray Hidratante Pós-Sol",
    image: "assets/imagem_corpo_hidratante_3.png",
    price: 44.9,
    category: "Corpo",
  ),
  Product(
    name: "Perfume Body Splash",
    image: "assets/imagem_corpo_bory_2.png",
    price: 89.9,
    category: "Corpo",
  ),
  Product(
    name: "Mini Body Splash",
    image: "assets/imagem_corpo_minibory_2.png",
    price: 89.9,
    category: "Corpo",
  ),
   Product(
    name: "Esfoliante Corporal",
    image: "assets/imagem_corpo_esfoliante_3.png",
    price: 39.9,
    category: "Corpo",
  ),
    Product(
    name: "Shimmer Glow Corporal",
    image: "assets/imagem_corpo_shimmer_1.png",
    price: 39.9,
    category: "Corpo",
  ),
];
