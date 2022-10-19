import 'package:flutter/material.dart';
import 'package:semana08_loja/objects/product.dart';
import 'package:semana08_loja/util/componentes.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  abrirProduto() {
    Navigator.of(context).pushNamed('/list-product');
  }

  List<Product> products = [
    Product("Produto 1", 99, 'Descrição 1'),
    Product("Produto 2", 45, 'Descrição 2'),
    Product("Produto 3", 67, 'Descrição 3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().createAppBar('Produtos', 20, Colors.white),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: products.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                Util().sizedBox(0, 15),
                InkWell(
                  onTap: abrirProduto,
                  child: Container(
                    decoration: Util()
                        .createBorder(Theme.of(context).colorScheme.onSurface),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Util().createImage(
                              'assets/imgs/produto$index.png', 125, 125),
                          Util().sizedBox(0, 5),
                          Util().createText(products[index].title, 12,
                              Theme.of(context).colorScheme.onSurface),
                          Util().createText('R\$ ${products[index].price}', 12,
                              Theme.of(context).colorScheme.onSurface),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
