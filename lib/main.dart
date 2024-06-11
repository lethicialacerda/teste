import 'package:flutter/material.dart';
import 'package:trabalho_final/telas/telaPrincipal/telaPrincipal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TelaPrincipal(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEEE4C6)
      )
    );
  }
}