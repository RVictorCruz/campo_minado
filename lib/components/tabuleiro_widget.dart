import 'package:campo_minado/components/campo_widget.dart';
import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter/cupertino.dart';

import '../models/campo.dart';

class TabuleiroWidget extends StatelessWidget {
  final Tabuleiro tabuleiro;
  final void Function(Campo) onAbrir;
  final void Function(Campo) onAlternarMarcacao;

  const TabuleiroWidget(
      {Key? key,
      required this.tabuleiro,
      required this.onAbrir,
      required this.onAlternarMarcacao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: tabuleiro.colunas,
      children: tabuleiro.campos.map((c) {
        return CampoWidget(
            campo: c, onAbrir: onAbrir, onAlternarMarcacao: onAlternarMarcacao);
      }).toList(),
    );
  }
}
