import 'package:flutter/material.dart';

class categoriasContainer extends StatelessWidget {
  final TabController tabController;


  const categoriasContainer({
    super.key,
    required this.tabController
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            text: 'Pizzas'
          ),
          Tab(
            text: 'Lanches'
          ),
          Tab(
            text: 'Bebidas'
          ),
          Tab(
            text: 'Paes'
          ),
          Tab(
            text: 'Sobremesas'
          ),
          Tab(
            text: 'Salgados'
          ),

        ]
      ),
    );
  }
}