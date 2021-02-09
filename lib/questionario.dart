import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quantoResponder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quantoResponder,
  });

  // Metodo para verificar se tem uma pergunta selecionada
  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  } 

  @override
  Widget build(BuildContext context) {

    // Metodo para pegar a resposta selecioanda
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((t) => Resposta(t, quantoResponder)).toList(),
      ],
    );
  }
}
