import 'package:flutter/material.dart';
import 'package:semana08_loja/util/componentes.dart';

class CreateClient extends StatefulWidget {
  const CreateClient({super.key});

  @override
  State<CreateClient> createState() => _CreateClientState();
}

class _CreateClientState extends State<CreateClient> {
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

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
      appBar: Util().createAppBar('Cadastrar Cliente', 20, Colors.white),
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
                    Util().createIcon(Icons.person_add_alt_sharp, 80),
                    Util().sizedBox(0, 20),
                    Util().createInput(TextInputType.text, 'Nome', txtNome,
                        'Preencha o nome', false),
                    Util().sizedBox(0, 10),
                    Util().createInput(TextInputType.text, 'E-mail', txtEmail,
                        'Preencha o e-mail', false),
                    Util().sizedBox(0, 10),
                    Util().createInput(TextInputType.text, 'Senha', txtSenha,
                        'Preencha a senha', true),
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
