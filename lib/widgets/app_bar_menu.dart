import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarMenu extends StatelessWidget {
  final Widget child;
  final Widget title;

  const AppBarMenu({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 460,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
      ],
      backgroundColor: Color.fromARGB(153, 233, 211, 171),
      title: Text(
        "Menu",
        style: GoogleFonts.dosis(
            fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
