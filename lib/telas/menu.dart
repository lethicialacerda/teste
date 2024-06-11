import 'package:flutter/material.dart';
import 'package:projeto/widgets/app_bar_menu.dart';
import 'package:projeto/widgets/search_top.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>[
          AppBarMenu(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text('ttile'),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end ,
              children: [
                Image.asset('/logo/logoP.png'),
                const SizedBox(height: 15,),
                SearchTop(),
              ],
            ),
            
          ), 
        ],
        body: Container(
          color: Color.fromARGB(153, 233, 211, 171),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0x99E8B963),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0), 
                topRight: Radius.circular(20.0),
                )
            ),
            
          ),
        ) ,  
      ),
    );
  }
}