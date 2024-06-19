import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/models/cardapio_model.dart';

class FoodTile extends StatelessWidget {
  final Comida comida;
  final void Function()? onTap;

  const FoodTile({super.key, required this.comida, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            comida.nome, 
                            style: GoogleFonts.dosis(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                          Text(
                            '\$' + comida.preco.toString(),
                            style: GoogleFonts.dosis(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87
                            )
                            ),
                            const SizedBox(height: 10),
                          Text(
                            comida.descricao,
                            style: GoogleFonts.dosis(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,

                            )
                          )
                    ],
                  ),
                ),
                const SizedBox(width: 15),

                ClipRRect(
                  borderRadius: BorderRadius.circular(8) ,
                  child: Image.asset(
                    comida.imagem,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                    ),
                ),
              ],
            ),
          ),
        ),

        
      ],
    );
  }
}
