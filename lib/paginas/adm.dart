import 'package:flutter/material.dart';
import 'package:semana08_loja/util/componentes.dart';

class Adm extends StatefulWidget {
  const Adm({super.key});

  @override
  State<Adm> createState() => _AdmState();
}

class _AdmState extends State<Adm> {
  @override
  Widget build(BuildContext context) {
    redirectProduct() {
      Navigator.of(context).pushNamed('/createProduct');
    }

    redirectClient() {
      Navigator.of(context).pushNamed('/createClient');
    }

    return Scaffold(
        appBar: Util().createAppBar('Menu ADM', 20, Colors.white),
        body: Center(
          child: Row(
            children: [
              Expanded(flex: 10, child: Util().sizedBox(0, 0)),
              Expanded(
                  flex: 35,
                  child: Util()
                      .createButton(redirectProduct, "Cadastrar Produto")),
              Expanded(flex: 10, child: Util().sizedBox(0, 0)),
              Expanded(
                  flex: 35,
                  child:
                      Util().createButton(redirectClient, "Cadastrar Cliente")),
              Expanded(flex: 10, child: Util().sizedBox(0, 0)),
            ],
          ),
        ));
  }
}
