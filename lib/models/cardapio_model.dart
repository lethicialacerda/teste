class Comida{
    final String nome;
    final String descricao;
    final String imagem;
    final double preco;
    final comidaCategoria categoria;

    Comida({
      required this.nome,
      required this.descricao,
      required this.imagem,
      required this.preco,
      required this.categoria
    });
}

enum comidaCategoria{
  Pizzas,
  Bebidas,
  Paes,
  Sobremesas,
  Salgados
}

