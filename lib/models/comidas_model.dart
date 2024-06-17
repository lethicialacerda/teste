import 'package:flutter/material.dart';
import 'package:projeto/models/cardapio_model.dart';

class Padaria extends ChangeNotifier{
  
  final List<Comida> _cardapio = [

//pizzas
    Comida(
      nome: "Pizza de Calabresa",
      descricao: "Pizza de calabresa com queijo mussarela e molho de tomate", 
      imagem: "assets/pizzas/pizza3.jpg" , 
      preco: 24.00, 
      categoria: comidaCategoria.Pizzas),
    Comida(
      nome: "Pizza Marguerita",
      descricao: "Pizza com queijo mussarela, molho de tomate, pepperoni, azeitonas pretas e pimentao verde", 
      imagem: "assets/pizzas/pizza2.jpg" , 
      preco: 25.00, 
      categoria: comidaCategoria.Pizzas),
    Comida(
      nome: "Pizza de rucula",
      descricao: "Pizza com queijo mussarela, molho de tomate, rucula, azeitona e milho ", 
      imagem: "assets/a.jng" , 
      preco: 22.00, 
      categoria: comidaCategoria.Pizzas),

//bebidas
    Comida(
      nome: "Coca-Cola",
      descricao: "Coca-cola de 600 ml", 
      imagem: "assets/bebidas/bebida1.jpg" , 
      preco: 8.00, 
      categoria: comidaCategoria.Bebidas),
    Comida(
      nome: "Pepsi",
      descricao: "Pepsi 600ml", 
      imagem: "assets/bebidas/bebida3.jpg" , 
      preco: 8.00, 
      categoria: comidaCategoria.Bebidas),
    Comida(
      nome: "Suco de laranja",
      descricao: "Suco de laranja de 500ml", 
      imagem: "assets/bebidas/bebida2.jpg" , 
      preco: 10.00, 
      categoria: comidaCategoria.Bebidas),



//paes
    Comida(
      nome: "Pao de forma",
      descricao: "Pao de forma caseiro", 
      imagem: "assets/paes/pao1.jpg" , 
      preco: 15.00, 
      categoria: comidaCategoria.Paes),
    Comida(
      nome: "Pao de leite",
      descricao: "Pao de leite caseiro", 
      imagem: "assets/paes/pao2.jpg" , 
      preco: 1.00, 
      categoria: comidaCategoria.Paes),
    Comida(
      nome: "Torrada",
      descricao: "Pacote com 12 torradas", 
      imagem: "assets/paes/pao3.jpg" , 
      preco: 5.00, 
      categoria: comidaCategoria.Paes),



//sobremesas
    Comida(
      nome: "Pudim pequeno",
      descricao: "Pudim pequeno de leite condensado", 
      imagem: "assets/sobremesas/sobremesa1.jpg" , 
      preco: 7.00, 
      categoria: comidaCategoria.Sobremesas),
    Comida(
      nome: "Torta de frutas vermelhas",
      descricao: "Torta pequena de frutas vermelhas com amora, framboesa e morango. Recheada com brigadeiro de leite ninho", 
      imagem: "assets/sobremesas/sobremesa2.jpg" , 
      preco: 14.00, 
      categoria: comidaCategoria.Sobremesas),
    Comida(
      nome: "Tiramisu",
      descricao: "Tiramisu feito com chocolate belga", 
      imagem: "assets/sobremesas/sobremesa3.jpg" , 
      preco: 16.00, 
      categoria: comidaCategoria.Sobremesas),



//salgados
    Comida(
      nome: "Esfiha",
      descricao: "Esfiha do dabor de sua escolha", 
      imagem: "assets/salgados/salgado1.jpg" , 
      preco: 4.00, 
      categoria: comidaCategoria.Salgados),
    Comida(
      nome: "Pao de queijo",
      descricao: "12 paes de queijo pequenos", 
      imagem: "assets/salgados/salgado2.jpg" , 
      preco: 8.00, 
      categoria: comidaCategoria.Salgados),
    Comida(
      nome: "Coxinha",
      descricao: "Coxinha de frango", 
      imagem: "assets/salgados/salgado3.jpg" , 
      preco: 4.00, 
      categoria: comidaCategoria.Salgados),
     
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