import 'product.dart';

// Lista principal de produtos
final List<Product> sampleProducts = [
  // PELE
  Product(
    name: "Creme Hidratante Facial",
    image: "assets/imagem_pele_creme_1.png",
    price: 59.90,
    category: "Pele",
     description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),
  Product(
    name: "Sérum Anti-Idade",
    image: "assets/imagem_pele_serum_1.png",
    price: 129.90,
    category: "Pele",
     description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),
  Product(
    name: "Protetor Solar FPS 70",
    image: "assets/imagem_pele_protetor_1.png",
    price: 89.90,
    category: "Pele",
     description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),

  // ROSTO
  Product(
    name: "Base Líquida Matte",
    image: "assets/imagem_rosto_base_1.png",
    price: 89.90,
    category: "Rosto",
     description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),
  Product(
    name: "Corretivo Alta Cobertura",
    image: "assets/imagem_rosto_corretivo_1.png",
    price: 59.90,
    category: "Rosto",
     description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),

  // CABELO
  Product(
    name: "Shampoo Hidratante",
    image: "assets/imagem_cabelo_shampoo.png",
    price: 35.0,
    category: "Cabelo",
     description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),
  Product(
    name: "Condicionador Nutritivo",
    image: "assets/imagem_cabelo_condicionador_1.png",
    price: 40.0,
    category: "Cabelo",
     description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),

  // CORPO
  Product(
    name: "Hidratante Corporal",
    image: "assets/imagem_corpo_hidratante_2.png",
    price: 59.90,
    category: "Corpo",
     description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),
  Product(
    name: "Bronzeador Corporal",
    image: "assets/imagem_corpo_bronzeador_1.png",
    price: 59.90,
    category: "Corpo",
     description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),
];

// Lista de mais vendidos (opcional)
final List<Product> bestSellers = [
  sampleProducts[0],
  sampleProducts[1],
  sampleProducts[5],
  sampleProducts[6],
];
