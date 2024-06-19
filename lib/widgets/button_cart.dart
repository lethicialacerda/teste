import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCart extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final String price;

  const ButtonCart({
    super.key, 
    required this.onTap, 
    required this.text,
    required this.price
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
            color: Color(0x99E8B963),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Row(
          children: [
             Container(
              alignment: Alignment.centerLeft,
               child: Text(
                  text,
                  style: GoogleFonts.dosis(
                    fontSize: 19, 
                    fontWeight: FontWeight.w600
                  ),
                   textAlign: TextAlign.center,
                           ),
             ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                price,
                style: GoogleFonts.dosis(
                  fontSize: 19, 
                  fontWeight: FontWeight.w700 
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
