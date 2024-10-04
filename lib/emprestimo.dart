import 'package:flutter/material.dart';

// a classe 'Emprestimo' representa a seção de empréstimos no aplicativo
class Emprestimo extends StatelessWidget {
  const Emprestimo({super.key});

  @override
  Widget build(Object context) {
    return const Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // alinha os elementos à esquerda
      children: [
        // a linha abaixo contém o título "Empréstimo" e um ícone de seta
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // distribui espaço entre os elementos
          children: [
            Text(
              "Empréstimo", // título da seção
              style: TextStyle(fontSize: 24), // estilo do texto
            ),
            Icon(Icons
                .arrow_forward_ios_outlined), // ícone para indicar ação ou navegação
          ],
        ),
        SizedBox(
          height: 10, // espaço entre o título e a descrição
        ),
        Text(
          "Tudo certo! Você está em dia.", // mensagem que indica que está tudo em ordem
          style: TextStyle(
              fontSize: 18, color: Colors.black54), // estilo da mensagem
        ),
      ],
    );
  }
}
