import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/models/cardapio_model.dart';
import 'package:projeto/widgets/button_cart.dart';

class FoodPage extends StatefulWidget {
  final Comida comida;

  const FoodPage({
    super.key,
    required this.comida
    });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(153, 252, 244, 197),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(76, 232, 186, 99)
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)
                    ),
                  child: Image.asset(
                    widget.comida.imagem,
                    height: 350,
                    width: 550,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    ),
                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 500,
                      alignment: Alignment.topLeft,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(76, 232, 186, 99),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)
                          ) 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                        child: Text(
                          widget.comida.nome,
                          style: GoogleFonts.dosis(
                            fontWeight: FontWeight.w600,
                            fontSize: 25
                          ),
                        ),
                      ),
                      
                    ),
                    const SizedBox(height: 5),
                    Container(
                      height: 90,
                      width: 490,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(76, 232, 186, 99),
                        borderRadius: BorderRadius.circular(20.0)                   ),
                      child: Text(
                        textAlign: TextAlign.center,
                        widget.comida.descricao,
                        style: GoogleFonts.dosis(
                          fontWeight: FontWeight.w400,
                          fontSize: 20
                      ),
                    ),
                    
                  ),
                ], 
              ),
              const SizedBox(height: 280),
              ButtonCart(
                onTap: () {}, 
                text: "Adicionar ao carrinho",
                price: "R\$" + widget.comida.preco.toString(),
            ),
          ],
        ),
      ),
    );
  }
}