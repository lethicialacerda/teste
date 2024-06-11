import 'package:trabalho_final/models/comida_model.dart';

class padaria{
  
  final List<Comida> _cardapio = [

//pizzas
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.pizzas),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.pizzas),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.pizzas),


//lanches
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.lanches),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.lanches),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.lanches),



//bebidas
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.bebidas),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.bebidas),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.bebidas),



//paes
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.paes),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.paes),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.paes),



//sobremesas
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.sobremesas),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.sobremesas),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.sobremesas),



//salgados
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.salgados),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.salgados),
    Comida(
      nome: "Pao",
      descricao: "pao fresquinho", 
      imagem: "assets/a.jng" , 
      preco: 2.00, 
      categoria: comidaCategoria.salgados),
     
  ];

//GETTER

  List<Comida> get cardapio => _cardapio;
}

//FUNCOES

//adicionar carrinho

//remover carrinho

//total preco

//total produtos

//limpar carrinho