import 'package:flutter/material.dart';
import 'package:semana08_loja/util/componentes.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().createAppBar('Produto x', 20, Colors.white),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Util().sizedBox(0, 20),
          Util().createImage('assets/imgs/produto0.png', 200, 200),
          Util().sizedBox(0, 10),
          Util().createText('Produto', 30, Colors.green),
          Util().createText(
              'R\$ 99', 20, Theme.of(context).colorScheme.onSurface),
          Util().createText(
              'Descrição', 20, Theme.of(context).colorScheme.onSurface)
        ],
      )),
    );
  }
}
