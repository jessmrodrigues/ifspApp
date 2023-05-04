import 'package:aula7/aula09/classes/disciplina.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Aula9Disciplinas extends StatelessWidget {
  const Aula9Disciplinas({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Disciplina> disciplinas = Disciplina.gerarDisciplinas();

    return ListView.builder(
      itemCount: disciplinas.length,
      itemBuilder: (context, index) => ListTile(
        leading: Text(disciplinas[index].codigo),
        title: Text(disciplinas[index].nome),
        subtitle: Text(disciplinas[index].professor),
      ),
    );
  }
}
