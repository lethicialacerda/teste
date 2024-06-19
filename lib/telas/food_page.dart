import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/models/cardapio_model.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image.asset(widget.comida.imagem),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Text(
                    widget.comida.nome,
                    style: GoogleFonts.dosis(
                      fontWeight: FontWeight.w600,
                      fontSize: 25
                    ),
                  ),
                  const SizedBox(height:5),
                  Text(
                    'RS ' +
                    widget.comida.preco.toString(),
                    style: GoogleFonts.dosis(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.comida.descricao,
                    style: GoogleFonts.dosis(
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}