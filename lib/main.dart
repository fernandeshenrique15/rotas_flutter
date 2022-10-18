import 'package:flutter/material.dart';
import 'package:semana08_loja/paginas/adm.dart';
import 'package:semana08_loja/paginas/createClient.dart';
import 'package:semana08_loja/paginas/createProduct.dart';
import 'package:semana08_loja/paginas/login.dart';
import 'package:semana08_loja/paginas/produto.dart';
import 'package:semana08_loja/paginas/store.dart';
import 'package:semana08_loja/util/temas.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      theme: Temas().dark(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/createProduct': (context) => const CreateProduct(),
        '/createClient': (context) => const CreateClient(),
        '/adm': (context) => const Adm(),
        '/store': (context) => const Store(),
        '/produto': (context) => const Produto(),
      },
    );
  }
}
