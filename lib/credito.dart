import 'package:flutter/material.dart';

// a classe 'Credito' representa a seção do cartão de crédito no aplicativo
class Credito extends StatelessWidget {
  const Credito({super.key});

  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // alinha os elementos à esquerda
      children: [
        // a primeira linha contém o título "Cartão de Crédito" e um ícone de seta
        const Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // distribui espaço entre os elementos
          children: [
            Text(
              "Cartão de Crédito", // título da seção
              style: TextStyle(fontSize: 24), // estilo do texto
            ),
            Icon(Icons
                .arrow_forward_ios_outlined), // ícone para indicar ação ou navegação
          ],
        ),
        const SizedBox(
          height: 10, // espaço entre os elementos
        ),
        // exibe o status da fatura
        const Text(
          "Fatura Fechada", // texto que indica que a fatura está fechada
          style:
              TextStyle(fontSize: 18, color: Colors.black54), // estilo do texto
        ),
        const SizedBox(
          height: 10, // espaço entre o status da fatura e o valor
        ),
        // exibe o valor da fatura
        const Text(
          "R\$50,00", // valor da fatura
          style: TextStyle(fontSize: 24), // estilo do valor
        ),
        const SizedBox(
          height: 15, // espaço entre o valor e a data de vencimento
        ),
        // exibe a data de vencimento
        const Text(
          "Vencimento dia 12", // texto com a data de vencimento
          style:
              TextStyle(fontSize: 18, color: Colors.black54), // estilo do texto
        ),
        const SizedBox(
          height: 15, // espaço entre a data de vencimento e o botão
        ),
        // botão para renegociar a fatura
        ElevatedButton(
          onPressed:
              () {}, // ação ao pressionar o botão (ainda não implementada)
          child: const Text(
            "Renegociar", // texto do botão
            style: TextStyle(
                fontSize: 18, color: Colors.black), // estilo do texto do botão
          ),
        )
      ],
    );
  }
}
