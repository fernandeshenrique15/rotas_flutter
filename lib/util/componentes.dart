import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Util {
  configuraFundo(image) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/imgs/${image}'),
        fit: BoxFit.cover,
      ),
    );
  }

  createText(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
        color: cor,
      ),
    );
  }

  createAppBar(titulo, tam, cor) {
    return AppBar(
      title: createText(titulo, tam, cor),
      centerTitle: true,
    );
  }

  createInput(tipoTeclado, textoEtiqueta, controlador, msgValidacao, ofuscar) {
    return TextFormField(
      keyboardType: tipoTeclado,
      decoration: InputDecoration(
        labelText: textoEtiqueta,
        border: const OutlineInputBorder(),
        labelStyle: const TextStyle(
          color: Colors.green,
        ),
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.green,
        fontSize: 25.0,
      ),
      controller: controlador,
      obscureText: ofuscar,
      validator: (value) {
        if (value!.isEmpty) {
          return msgValidacao;
        }
      },
    );
  }

  createButton(funcao, titulo) {
    return Container(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        onPressed: () {
          funcao();
        },
        child: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }

  sizedBox([width, height]) {
    return SizedBox(
      width: width,
      height: height,
    );
  }

  createIcon(icon, [size]) {
    size = size ?? 30;
    return Icon(
      icon,
      size: size,
    );
  }

  child80(widget) {
    return Row(
      children: [
        Expanded(
          child: sizedBox(0, 0),
          flex: 10,
        ),
        Expanded(
          flex: 80,
          child: widget,
        ),
        Expanded(
          child: sizedBox(0, 0),
          flex: 10,
        ),
      ],
    );
  }

  child100(widget) {
    return Row(
      children: [
        Expanded(
          flex: 100,
          child: widget,
        ),
      ],
    );
  }

  createImage(url, width, height) {
    return Image(
      image: AssetImage(url),
      width: width,
      height: height,
    );
  }

  createBorder(color) {
    return BoxDecoration(
      border: Border.all(color: color, width: 1, style: BorderStyle.solid),
    );
  }

  createInputImage() {
    return Container(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: Text('Enviar imagem'),
        onPressed: () async {
          var picked = await FilePicker.platform.pickFiles();

          if (picked != null) {
            print(picked.files.first.name);
          }
        },
      ),
    );
  }
}
