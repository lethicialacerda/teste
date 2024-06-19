import 'package:flutter/material.dart';
import 'package:projeto/models/cardapio_model.dart';

class TabBarCategorias extends StatelessWidget {

  final TabController tabcontroller;

  const TabBarCategorias({
    super.key, required this.tabcontroller
    });

    List<Tab> _construirTab(){
      return comidaCategoria.values.map((categoria) {
        return Tab(
          text: categoria.toString().split('.').last,
        );
      }).toList();
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabcontroller,
        tabs: _construirTab(),
        labelColor: Colors.black,
        indicatorColor: Colors.black,
        unselectedLabelColor: Colors.black,
        indicatorWeight: 2.0,
        isScrollable: true,
        tabAlignment: TabAlignment.center,
      ),
    );
  }
}