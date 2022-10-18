import 'package:flutter/material.dart';
import 'package:semana08_loja/util/componentes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    fazLogin() {
      if (txtEmail.text == 'admin' && txtSenha.text == 'admin') {
        // Sem opção de voltar página
        Navigator.of(context).pushReplacementNamed('/adm');

        // Com opção de voltar
        //Navigator.of(context).pushNamed('/adm');
      } else if (txtEmail.text == 'cliente' && txtSenha.text == 'cliente') {
        // Sem opção de voltar página
        Navigator.of(context).pushReplacementNamed('/store');

        // Com opção de voltar
        //Navigator.of(context).pushNamed('/store');
      }
    }

    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 10, child: Util().sizedBox(0, 0)),
          Expanded(
            flex: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Util().createIcon(Icons.store, 90),
                Util().sizedBox(0, 20),
                Util().createInput(TextInputType.emailAddress, 'E-mail',
                    txtEmail, 'Digite o e-mail', false),
                Util().sizedBox(0, 10),
                Util().createInput(TextInputType.text, 'Senha', txtSenha,
                    'Digite a senha', true),
                Util().sizedBox(0, 30),
                Util().child100(
                  Util().createButton(fazLogin, 'Entrar'),
                ),
              ],
            ),
          ),
          Expanded(flex: 10, child: Util().sizedBox(0, 0)),
        ],
      ),
    );
  }
}
