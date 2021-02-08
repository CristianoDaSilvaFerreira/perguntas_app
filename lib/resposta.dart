import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  Resposta(this.texto);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(texto),
      onPressed: null,
    );
  }
}
