// ignore: file_names
import 'package:flutter/material.dart';
import 'package:projeto/telas/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<HomePage> {
  
  final nomeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Menu()),
          );
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('/telaP.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}