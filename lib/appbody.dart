import 'package:flutter/material.dart';
import "package:nubank/conta.dart";
import 'package:nubank/credito.dart';
import 'package:nubank/descubramais.dart';
import 'package:nubank/emprestimo.dart';

// o widget 'AppBody' organiza o layout principal da tela, exibindo várias seções do aplicativo como 'Conta', 'Crédito', 'Empréstimo' e 'Descubra Mais'
class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // cria uma margem ao redor de todo o conteúdo
      margin: const EdgeInsets.all(15),
      // utiliza um ListView para permitir que o usuário role pelas diferentes seções
      child: ListView(
        padding: EdgeInsets.all(
            16), // adiciona espaçamento interno ao redor de todos os itens
        children: const [
          // exibe a seção 'Conta', que inclui informações sobre o saldo da conta do usuário, ícones de ações como Pix, Pagamentos e Transferências
          Conta(),

          // adiciona espaçamento e um divisor visual entre a seção 'Conta' e a próxima
          Padding(
            padding: EdgeInsets.only(
                top: 30, bottom: 30), // espaço antes e depois do divisor
            child: Divider(height: 1), // linha de separação entre as seções
          ),

          // exibe a seção 'Credito', que apresenta os detalhes da fatura do cartão de crédito do usuário, como valor total e vencimento
          Credito(),

          // mais um divisor para separar a seção de 'Crédito' da próxima seção
          Padding(
            padding: EdgeInsets.only(
                top: 30, bottom: 30), // espaço antes e depois do divisor
            child: Divider(height: 1),
          ),

          // exibe a seção 'Emprestimo', que apresenta opções e ofertas de empréstimo para o usuário
          Emprestimo(),

          // outro divisor para criar uma separação entre 'Empréstimo' e a última seção
          Padding(
            padding: EdgeInsets.only(
                top: 30, bottom: 30), // espaço para dar respiro entre as seções
            child: Divider(height: 1),
          ),

          // exibe a seção 'DescubraMais', que fornece ao usuário informações adicionais ou sugestões sobre novas funcionalidades do aplicativo
          DescubraMais()
        ],
      ),
    );
  }
}
