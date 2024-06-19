import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:projeto/models/cardapio_model.dart';
import 'package:projeto/models/comidas_model.dart';
import 'package:projeto/telas/food_page.dart';
import 'package:projeto/widgets/app_bar_menu.dart';
import 'package:projeto/widgets/food_tile.dart';
import 'package:projeto/widgets/search_top.dart';
import 'package:projeto/widgets/tabs.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: comidaCategoria.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Comida> _filtrarMenuCategoria(
      comidaCategoria categoria, List<Comida> todoMenu) {
    return todoMenu.where((comida) => comida.categoria == categoria).toList();
  }

  List<Widget> colocarComidaNaCategoria(List<Comida> todoMenu) {
    return comidaCategoria.values.map((categoria) {
      List<Comida> menuCategoria = _filtrarMenuCategoria(categoria, todoMenu);
      return ListView.builder(
        itemCount: menuCategoria.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final comida = menuCategoria[index];
          return FoodTile(
            comida: comida, 
            onTap: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => FoodPage(
                  comida: comida),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          AppBarMenu(
            title: TabBarCategorias(tabcontroller: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('/logo/logoP.png'),
                const SizedBox(
                  height: 15,
                ),
                SearchTop(),
              ],
            ),
          ),
        ],
        body: Container(
          color: Color.fromARGB(153, 252, 244, 197),
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0x99E8B963),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Consumer<Padaria>(
                builder: (context, padaria, child) => TabBarView(
                    controller: _tabController,
                    children: colocarComidaNaCategoria(padaria.cardapio)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
