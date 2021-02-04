import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  // Criando o construdor
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
