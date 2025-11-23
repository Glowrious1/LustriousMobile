class Product {
  final String name;
  final String image;
  final double price;
  final String category;
  final String description;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.category,
    required this.description,
  });

}
final List<Product> sampleProducts = [
  // ================== PELE ==================
  Product(
    name: "Creme Hidratante Facial",
    image: "assets/imagem_pele_creme_1.png",
    price: 59.9,
    category: "Pele",
    description:  "O Creme oferece hidratação profunda e toque suave, deixando a pele mais macia e protegida ao longo do dia. Sua fórmula leve é rapidamente absorvida e ajuda a manter a umidade natural.",
     ),
  Product(
    name: "Sérum Anti-Idade",
    image: "assets/imagem_pele_serum_1.png",
    price: 129.9,
    category: "Pele",
    description: "O Sérum Anti-Idade suaviza linhas finas, melhora a firmeza e devolve o brilho natural da pele. Sua textura leve hidrata rapidamente e deixa o rosto com aspecto mais uniforme e revitalizado."
  ),
  Product(
    name: "Protetor Solar FPS 70",
    image: "assets/imagem_pele_protetor_1.png",
    price: 89.9,
    category: "Pele",
    description: "O Protetor Solar FPS 70 oferece alta proteção contra os raios UVA e UVB, ajudando a prevenir queimaduras, manchas e envelhecimento precoce. Sua fórmula leve espalha facilmente e não deixa resíduo branco."
  ),
  Product(
    name: "Gel de Limpeza Facial",
    image: "assets/imagem_pele_hidratante_1.png",
    price: 39.9,
    category: "Pele",
    description: "O Gel de Limpeza Facial remove impurezas e excesso de oleosidade sem ressecar, deixando a pele mais fresca, macia e equilibrada."
  ),
  Product(
    name: "Tônico Adstringente",
    image: "assets/imagem_pele_serum_2.png",
    price: 49.9,
    category: "Pele",
    description: "O Tônico Adstringente ajuda a controlar a oleosidade, minimizar a aparência dos poros e remover resíduos que a limpeza não alcança."
  ),
  Product(
    name: "Máscara de Argila Verde",
    image: "assets/imagem_pele_creme_1.png",
    price: 29.9,
    category: "Pele",
    description: "A Máscara de Argila Verde purifica profundamente a pele, ajudando a controlar a oleosidade e reduzir cravos. Rica em minerais, promove efeito detox e deixando o rosto mais limpo."
  ),
  Product(
    name: "Esfoliante Facial Suave",
    image: "assets/imagem_pele_esfoliante_2.png",
    price: 34.9,
    category: "Pele",
    description: "O Esfoliante Facial Suave remove células mortas delicadamente, deixando a pele mais lisa, renovada e com toque macio."
  ),
  Product(
    name: "Água Micelar",
    image: "assets/imagem_pele_agua_1.png",
    price: 44.9,
    category: "Pele",
    description: "A Água Micelar limpa, demaquila e purifica a pele de forma suave, removendo impurezas sem irritar. Suas micelas atraem sujeira e oleosidade e deixando o rosto fresco."
  ),
  Product(
    name: "Sérum Vitamina C",
    image: "assets/imagem_pele_serum_2.png",
    price: 119.9,
    category: "Pele",
    description: "Sérum concentrado com ação rejuvenescedora que melhora a firmeza, suaviza linhas finas e revitaliza a textura da pele. A fórmula leve penetra rapidamente, estimulando renovação celular e oferecendo hidratação prolongada. Deixa a pele com aparência mais jovem, uniforme e iluminada."
  ),
  Product(
    name: "Hidratante em Gel Noturno",
    image: "assets/imagem_pele_esfoliante_2.png",
    price: 64.9,
    category: "Pele",
    description: "O Hidratante em Gel Noturno restaura a pele enquanto você dorme, oferecendo hidratação leve e de rápida absorção. Sua fórmula refrescante ajuda a equilibrar a oleosidade."
  ),

  // ================== ROSTO ==================
  Product(
    name: "Base Líquida Matte",
    image: "assets/imagem_rosto_base_1.png",
    price: 89.9,
    category: "Rosto",
    description: "A Base Líquida Matte proporciona cobertura uniforme com efeito aveludado, controlando a oleosidade sem pesar na pele."
  ),
  Product(
    name: "Corretivo Alta Cobertura",
    image: "assets/imagem_rosto_corretivo_1.png",
    price: 59.9,
    category: "Rosto",
    description: "O Corretivo Alta Cobertura disfarça olheiras, manchas e imperfeições com facilidade, garantindo acabamento uniforme e resistente. Sua fórmula cremosa espalha bem, não craquela e oferece longa duração para um aspecto mais descansado e impecável."
  ),
  Product(
    name: "Pó Compacto Translúcido",
    image: "assets/imagem_rosto_po_compacto_1.png",
    price: 49.9,
    category: "Rosto",
    description: "O Pó Compacto Translúcido sela a maquiagem sem adicionar cor, controlando o brilho ao longo do dia e deixando a pele com acabamento suave e natural."
  ),
  Product(
    name: "Blush Pó",
    image: "assets/imagem_rosto_blush_pó_2.png",
    price: 39.9,
    category: "Rosto",
    description: "O Blush em Pó realça as maçãs do rosto com um toque de cor suave e natural. Sua textura fina espalha facilmente, garantindo acabamento leve e uniforme para um look saudável e luminoso."
  ),
  Product(
    name: "Bruma Glow",
    image: "assets/imagem_rosto_bruma_2.png",
    price: 39.9,
    category: "Rosto",
    description: "A Bruma Glow hidrata a pele enquanto proporciona um brilho radiante, deixando o rosto com aparência fresca e iluminada."
  ),Product(
    name: "Bruma com Glitter",
    image: "assets/imagem_rosto_bruma_1.png",
    price: 39.9,
    category: "Rosto",
    description: "A Bruma com Glitter adiciona hidratação e um brilho cintilante instantâneo, deixando a maquiagem mais vibrante e glamourosa. Pode ser usada antes, durante ou após a make para um efeito luminoso extra."
  ),
  Product(
    name: "Pó Solto Translúcido",
    image: "assets/imagem_rosto_po_solto_1.png",
    price: 49.9,
    category: "Rosto",
    description: "O Pó Solto Translúcido controla a oleosidade e sela a maquiagem com acabamento leve e imperceptível. Sua textura fina ajuda a suavizar poros e manter a pele sequinha por mais tempo."
  ),
  Product(
    name: "Blush Líquido",
    image: "assets/imagem_rosto_blush_pó_1.png",
    price: 39.9,
    category: "Rosto",
    description: "O Blush em Pó realça as maçãs do rosto com um toque de cor suave e natural. Sua textura fina espalha facilmente, garantindo acabamento leve e uniforme para um look saudável e luminoso."
  ),
  Product(
    name: "Iluminador Líquido",
    image: "assets/imagem_rosto_iluminador_2.png",
    price: 54.9,
    category: "Rosto",
    description: "Iluminador fluido com acabamento cintilante e uniforme. Realça a pele com um toque suave de luminosidade."
  ),
  Product(
    name: "Iluminador Líquido Glow",
    image: "assets/imagem_rosto_iluminador_3.png",
    price: 54.9,
    category: "Rosto",
    description: "Iluminador líquido de textura leve que garante um glow natural e radiante. Fácil de espalhar e com brilho construível."
  ),
  Product(
    name: "Batom Vermelho Luxo",
    image: "assets/imagem_rosto_batao_1.png",
    price: 49.9,
    category: "Rosto",
    description: "Batom vermelho de alta pigmentação, textura cremosa e longa duração. Deixa os lábios macios e com um acabamento elegante."
  ),
  Product(
    name: "Gloss Labial Vermelho",
    image: "assets/imagem_rosto_gloss_1.png",
    price: 29.9,
    category: "Rosto",
    description: "Gloss vermelho com brilho intenso e textura leve. Hidrata os lábios e deixa um acabamento espelhado sem sensação pegajosa."
  ),
    Product(
    name: "Gloss Labial Transparente",
    image: "assets/imagem_rosto_gloss_6.png",
    price: 29.9,
    category: "Rosto",
    description: "Gloss transparente com brilho espelhado e textura confortável. Realça os lábios sem deixar pegajoso."
  ),
  Product(
    name: "Blush Bastão",
    image: "assets/imagem_rosto_blush_bastão.png",
    price: 39.9,
    category: "Rosto",
    description: "Blush em bastão com textura cremosa e fácil de espalhar. Proporciona cor natural e efeito saudável à pele."
  ),
  Product(
    name: "Paleta de Sombras Neutras",
    image: "assets/imagem_rosto_sombra_1.png",
    price: 99.9,
    category: "Rosto",
    description: "Tons neutros versáteis com alta pigmentação. Perfeita para maquiagens do dia a dia ou produções mais elegantes."
  ),
  Product(
    name: "Paleta de Sombras Neutras Com Glitter",
    image: "assets/imagem_rosto_sombra_2.png",
    price: 99.9,
    category: "Rosto",
    description: "Paleta com tons neutros e partículas de glitter. Ideal para criar looks iluminados, do básico ao glam."
  ),
  Product(
    name: "Delineador Líquido Preto",
    image: "assets/imagem_rosto_deliniador_1.png",
    price: 34.9,
    category: "Rosto",
    description: "Delineador preto de alta precisão e secagem rápida. Garante traçado firme, pigmentado e de longa duração."
  ),
  Product(
    name: "Máscara de Cílios Volume",
    image: "assets/imagem_rosto_rimel_1.png",
    price: 69.9,
    category: "Rosto",
    description: "Máscara que oferece volume intenso e definição. Deixa os cílios mais encorpados sem formar grumos."
  ),
   Product(
    name: "Base Líquida Matte",
    image: "assets/imagem_rosto_base_liquida_2.png",
    price: 89.9,
    category: "Rosto",
    description: "Base leve com acabamento matte e cobertura uniforme. Controla a oleosidade e mantém a pele sequinha por horas."
  ),
   Product(
    name: "Base Líquida Matte",
    image: "assets/imagem_rosto_base_liquida.png",
    price: 89.9,
    category: "Rosto",
    description: "Base leve com acabamento matte e cobertura uniforme. Controla a oleosidade e mantém a pele sequinha por horas."
  ),

  // ================== CABELO ==================
  Product(
    name: "Shampoo Hidratante",
    image: "assets/imagem_cabelo_shampoo.png",
    price: 35.0,
    category: "Cabelo",
    description: "Limpa suavemente enquanto devolve a umidade natural aos fios. Ideal para cabelos secos ou ressecados, deixa o cabelo macio, sedoso e preparado para receber os próximos tratamentos da rotina capilar."
  ),
  Product(
    name: "Condicionador Nutritivo",
    image: "assets/imagem_cabelo_condicionador_1.png",
    price: 40.0,
    category: "Cabelo",
    description: "Hidrata e desembaraça instantaneamente, deixando os fios mais leves, macios e alinhados. A fórmula nutritiva envolve o cabelo, selando as cutículas e proporcionando brilho intenso e toque aveludado."
  ),
  Product(
    name: "Máscara Capilar Reconstrução",
    image: "assets/imagem_cabelo_hidratante_1.png",
    price: 79.9,
    category: "Cabelo",
    description: "Hidrata e desembaraça instantaneamente, deixando os fios mais leves, macios e alinhados. A fórmula nutritiva envolve o cabelo, selando as cutículas e proporcionando brilho intenso e toque aveludado."
  ),
  Product(
    name: "Óleo Capilar Argan",
    image: "assets/imagem_cabelo_oleo_1.png",
    price: 59.9,
    category: "Cabelo",
    description: "Enriquecido com óleo de Argan puro, nutre profundamente, controla o frizz e devolve brilho imediato aos fios. Ideal para cabelos opacos ou ressecados, promove maciez intensa sem pesar e auxilia na reparação das pontas."
  ),
  Product(
    name: "Protetor Térmico ",
    image: "assets/imagem_cabelo_protetor_1.png",
    price: 49.9,
    category: "Cabelo",
    description: "Protege os fios contra altas temperaturas, reduzindo danos causados por secador, chapinha e modelador. Cria uma película leve que evita quebra, frizz e ressecamento, mantendo o cabelo macio, alinhado e com brilho saudável."
  ),
    Product(
    name: "Shampoo Hidratante",
    image: "assets/imagem_cabelo_shampoo_2.png",
    price: 35.0,
    category: "Cabelo",
    description: "Limpa suavemente sem ressecar. Devolve hidratação, maciez e brilho para cabelos secos ou opacos."
  ),
  Product(
    name: "Condicionador Nutritivo",
    image: "assets/imagem_cabelo_condicionador_2.png",
    price: 40.0,
    category: "Cabelo",
    description: "Desembaraça, nutre e sela as cutículas. Proporciona maciez, brilho e fios mais suaves ao toque."
  ),
  Product(
    name: "Máscara Capilar Reconstrução",
    image: "assets/imagem_cabelo_hidratante_2.png",
    price: 79.9,
    category: "Cabelo",
    description: "Repõe massa e fortalece os fios danificados. Deixa o cabelo mais resistente, encorpado e com brilho renovado."
  ),
  Product(
    name: "Óleo Capilar Argan",
    image: "assets/imagem_cabelo_oleo_2.png",
    price: 59.9,
    category: "Cabelo",
    description: "Nutre profundamente e controla o frizz sem pesar. Devolve brilho imediato, maciez e repara pontas ressecadas."
  ),
  Product(
    name: "Protetor Térmico ",
    image: "assets/imagem_cabelo_protetor_2.png",
    price: 49.9,
    category: "Cabelo",
    description: "Protege os fios do calor e reduz danos causados por secador e chapinha. Deixa o cabelo mais alinhado, resistente e sem frizz."
  ),
  Product(
    name: "Spray Texturizador",
    image: "assets/imagem_pele_serum_1.png",
    price: 39.9,
    category: "Cabelo",
    description: "Cria ondas naturais e adiciona volume leve. Mantém os fios com textura bonita e aspecto praiano."
  ),
  Product(
    name: "Tônico Capilar Crescimento",
    image: "assets/imagem_pele_serum_2.png",
    price: 69.9,
    category: "Cabelo",
    description: "Estimula a circulação do couro cabeludo e fortalece a raiz. Auxilia no crescimento e redução da queda."
  ),
  Product(
    name: "Shampoo Crystal Shine",
    image: "assets/imagem_cabelo_shampoo_3.png",
    price: 29.9,
    category: "Cabelo",
    description: "Realça o brilho e limpa delicadamente. Deixa os fios luminosos, soltos e com toque suave."
  ),
  Product(
    name: "Condicionador Crystal Shine",
    image: "assets/imagem_cabelo_condicionador_3.png",
    price: 44.9,
    category: "Cabelo",
    description: "Sela as cutículas e aumenta o brilho natural. Deixa os fios suaves, alinhados e radiantes."
  ),
  Product(
    name: "Óleo Nutri Glow",
    image: "assets/imagem_cabelo_oleo_3.png",
    price: 34.9,
    category: "Cabelo",
    description: "Proporciona brilho radiante e nutrição intensa. Deixa o cabelo leve, sedoso e com aspecto iluminado."
  ),
  Product(
    name: "Shampoo Strength & Growth",
    image: "assets/imagem_cabelo_shampoo_4.png",
    price: 34.9,
    category: "Cabelo",
    description: "Estimula o couro cabeludo e fortalece desde a raiz. Limpa suavemente enquanto ajuda no crescimento dos fios."
  ),
  Product(
    name: "Condicionador Strength & Growth",
    image: "assets/imagem_cabelo_condicionador_4.png",
    price: 34.9,
    category: "Cabelo",
    description: "Fortalece os fios e reduz a quebra. Proporciona maciez enquanto estimula crescimento saudável."
  ),
  Product(
    name: "Óleo ",
    image: "assets/imagem_cabelo_oleo_4.png",
    price: 34.9,
    category: "Cabelo",
    description: "Nutre profundamente, reduz frizz e devolve brilho imediato. Ideal para pontas ressecadas e toque suave."
  ),
  Product(
    name: "Shampoo para Cachos ",
    image: "assets/imagem_cabelo_shampoo_5.png",
    price: 34.9,
    category: "Cabelo",
    description: "Limpa sem ressecar e ajuda na definição natural. Hidrata e mantém os cachos mais macios e disciplinados."
  ),
Product(
    name: "Condicionador para Cachos",
    image: "assets/imagem_cabelo_condicionador_5.png",
    price: 34.9,
    category: "Cabelo",
    description: "Define, hidrata e controla o frizz dos cachos. Deixa os fios macios, soltos e com movimento natural."
  ),


  // ================== CORPO ==================
  Product(
    name: "Hidratante Corporal",
    image: "assets/imagem_corpo_hidratante_2.png",
    price: 59.9,
    category: "Corpo",
    description: "Hidrata por horas, deixando a pele macia e suave. Textura cremosa que espalha facilmente. Mantém a pele nutrida, protegida e perfumada."
  ),
   Product(
    name: "Bronzeador Corporal",
    image: "assets/imagem_corpo_bronzeador_1.png",
    price: 59.9,
    category: "Corpo",
    description: "Realça o tom natural com efeito dourado instantâneo. Deixa a pele luminosa e com aspecto saudável. Ideal para conquistar brilho de verão o ano inteiro."
  ),
  Product(
    name: "Óleo Corporal Perfumado",
    image: "assets/imagem_corpo_oleo_1.png",
    price: 69.9,
    category: "Corpo",
    description: "Nutre profundamente, deixando a pele macia e radiante. Fragrância elegante e duradoura que envolve o corpo. Absorve bem e realça o brilho natural."
  ),
    Product(
    name: "Spray Corporal",
    image: "assets/imagem_corpo_spray_1.png",
    price: 39.9,
    category: "Corpo",
    description: "Perfume leve para refrescar o corpo a qualquer hora. Ideal para ambientes quentes e para reaplicação durante o dia. Deixa sensação de frescor imediato."
  ),
   Product(
    name: "Esfoliante de Pé",
    image: "assets/imagem_corpo_esfoliante_1.png",
    price: 39.9,
    category: "Corpo",
    description: "Remove asperezas e calosidades sem agredir. Deixa os pés mais lisos, macios e hidratados. Perfeito para rotina de cuidados e prevenção de rachaduras."
  ),
  Product(
    name: "Sabonete Líquido Esfoliante",
    image: "assets/imagem_corpo_esfoliante_5.png",
    price: 34.9,
    category: "Corpo",
    description: "Esfolia suavemente, remove células mortas e impurezas. Deixa a pele mais lisa, renovada e com toque macio. Ideal para manter brilho e textura uniforme."
  ),
    Product(
    name: "Gel Corporal",
    image: "assets/imagem_corpo_gel_1.png",
    price: 39.9,
    category: "Corpo",
    description: "Textura leve que refresca imediatamente. Hidrata sem pesar e absorve rapidinho. Perfeito para dias quentes ou após o banho."
  ),
  Product(
    name: "Bory Splash",
    image: "assets/imagem_corpo_bory_1.png",
    price: 22.9,
    category: "Corpo",
    description: "Perfuma com suavidade e frescor ao longo do dia. Ótimo para reaplicar e manter a sensação de cuidado. Ideal para quem ama fragrâncias leves e aconchegantes."
  ),
  Product(
    name: "Bruma Loção Firmadora",
    image: "assets/imagem_corpo_bruma_1.png",
    price: 79.9,
    category: "Corpo",
    description: "Hidrata, tonifica e ofDestaca o brilho natural da pele com partículas luminosas. Proporciona efeito radiante imediato, ideal para eventos e fotos. Deixa a pele hidratada, uniforme e iluminada.erece sensação refrescante. Auxilia na firmeza da pele com uso contínuo. Deixa um toque suave, leve e agradavelmente perfumado."
  ),
  Product(
    name: "Iluminador Corporal",
    image: "assets/imagem_corpo_iluminador_1.png",
    price: 22.9,
    category: "Corpo",
    description: "Hidrata profundamente e recupera mãos ressecadas. Cria uma camada protetora sem deixar sensação pegajosa. Mantém as mãos macias, suaves e cheirosas por horas."
  ),
  Product(
    name: "Creme para Mãos",
    image: "assets/imagem_corpo_esfoliante_2.png",
    price: 24.9,
    category: "Corpo",
    description: "Fragrância leve e envolvente para usar a qualquer hora. Ideal para quem gosta de um perfume suave no dia a dia. Deixa a pele cheirosa, fresca e delicadamente perfumada."
  ),
  Product(
    name: "Mini Bory Splash",
    image: "assets/imagem_corpo_minibory_1.png",
    price: 54.9,
    category: "Corpo",
    description: "Fragrância leve e envolvente para usar a qualquer hora. Ideal para quem gosta de um perfume suave no dia a dia. Deixa a pele cheirosa, fresca e delicadamente perfumada."
  ),
  Product(
    name: "Esfoliante Corporal",
    image: "assets/imagem_corpo_esfoliante_4.png",
    price: 39.9,
    category: "Corpo",
    description: "Remove asperezas e devolve maciez com esfoliação suave. Estimula a renovação natural da pele, deixando-a mais uniforme. Perfeito para preparar o corpo para hidratantes e produtos iluminadores."
  ),
  Product(
    name: "Spray Hidratante Pós-Sol",
    image: "assets/imagem_corpo_hidratante_3.png",
    price: 44.9,
    category: "Corpo",
    description: "Acalma a pele após exposição ao sol, proporcionando hidratação imediata. Deixa sensação refrescante e ajuda a recuperar o conforto da pele. Ideal para manter o bronze bonito e a pele saudável."
  ),
  Product(
    name: "Perfume Body Splash",
    image: "assets/imagem_corpo_bory_2.png",
    price: 89.9,
    category: "Corpo",
    description: "Perfuma delicadamente com aroma leve e duradouro. Ideal para quem gosta de fragrâncias frescas e confortáveis. Mantém a pele cheirosa ao longo do dia com sensação de leveza."
  ),
  Product(
    name: "Mini Body Splash",
    image: "assets/imagem_corpo_minibory_2.png",
    price: 89.9,
    category: "Corpo",
    description: "Fragrância suave e refrescante perfeita para o dia a dia. Proporciona sensação de frescor imediato e pode ser reaplicado sempre que desejar. Ideal para carregar na bolsa e manter-se perfumada."
  ),
   Product(
    name: "Esfoliante Corporal",
    image: "assets/imagem_corpo_esfoliante_3.png",
    price: 39.9,
    category: "Corpo",
    description: "Remove células mortas e impurezas, deixando a pele mais lisa e uniforme. Proporciona toque macio e aparência renovada desde a primeira aplicação. Prepara a pele para hidratação mais eficiente."
  ),
    Product(
    name: "Shimmer Glow Corporal",
    image: "assets/imagem_corpo_shimmer_1.png",
    price: 39.9,
    category: "Corpo",
    description: "Ilumina a pele com partículas de brilho intenso e acabamento luminoso. Hidrata enquanto destaca o tom natural, deixando um glow radiante e sofisticado. Ideal para eventos, fotos e uso diário para realçar a pele."
  ),
];
