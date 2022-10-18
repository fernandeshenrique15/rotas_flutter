import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:semana08_loja/util/componentes.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({super.key});

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtPreco = TextEditingController();
  TextEditingController txtDescricao = TextEditingController();
  TextEditingController txtQuantidade = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String msgButton = 'Cadastrar';
  bool cadastro = false;

  cadastrar() {
    setState(() {
      msgButton == 'Cadastrado';
      cadastro = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Util().createAppBar('Cadastrar Produto', 20, Colors.white),
      body: Row(
        children: [
          Expanded(flex: 10, child: Util().sizedBox(0, 0)),
          Expanded(
            flex: 80,
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Util().createIcon(Icons.add_business, 80),
                    Util().sizedBox(0, 20),
                    Util().createInput(TextInputType.text, 'Nome', txtNome,
                        'Preencha o nome', false),
                    Util().sizedBox(0, 10),
                    Util().createInput(TextInputType.number, 'Preço', txtPreco,
                        'Preencha o preço', false),
                    Util().sizedBox(0, 10),
                    Util().createInput(TextInputType.text, 'Descrição',
                        txtDescricao, 'Preencha a descrição', false),
                    Util().sizedBox(0, 10),
                    Util().createInput(TextInputType.number, 'Quantidade',
                        txtQuantidade, 'Preencha a quantidade', false),
                    Util().sizedBox(0, 10),
                    Util().createInputImage(),
                    Util().sizedBox(0, 15),
                    Util().createButton(cadastrar, msgButton)
                  ],
                )),
          ),
          Expanded(flex: 10, child: Util().sizedBox(0, 0)),
        ],
      ),
    );
  }
}
