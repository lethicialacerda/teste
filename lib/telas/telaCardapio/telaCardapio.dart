// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trabalho_final/widgets/categoriasContainer.dart';
import 'package:trabalho_final/widgets/destaque.dart';
import 'package:trabalho_final/widgets/searchTop.dart';


class TelaCardapio extends StatefulWidget {
  const TelaCardapio({super.key});

  @override
  State<TelaCardapio> createState() => _TelaCardapioState();
}

class _TelaCardapioState extends State<TelaCardapio> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Image.asset('/logoP.png', width: 500, height: 130),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0x99E8B963),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                      child: Text(
                        'Cardápio',
                        style: GoogleFonts.dosis(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 3,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                      child: Icon(
                        Icons.shopping_cart, // Escolha o ícone desejado
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SearchTop(),
            Title(color: Colors.black, child: categoriasContainer(tabController: _tabController)),
            const SizedBox(height: 8),
            NestedScrollView(
              headerSliverBuilder: (context, ) , 
              body: body
            )
          ], 
        ),
      ),
    );
  }
}
