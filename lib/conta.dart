import 'package:flutter/material.dart';

// a classe 'Conta' representa a seção de conta do usuário no aplicativo
class Conta extends StatelessWidget {
  const Conta({super.key});

  @override
  Widget build(Object context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.start, // alinha os elementos na parte superior
      crossAxisAlignment:
          CrossAxisAlignment.start, // alinha os elementos à esquerda
      children: [
        // a primeira linha contém o título "Conta" e um ícone de seta
        const Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // distribui espaço entre os elementos
          children: [
            Text(
              "Conta", // título da seção
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold), // estilo do texto
            ),
            Icon(Icons
                .arrow_forward_ios_outlined), // ícone para indicar ação ou navegação
          ],
        ),
        const SizedBox(
          height: 10, // espaço entre os elementos
        ),
        // exibe o saldo da conta
        const Text(
          "R\$179,00", // saldo atual da conta
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold), // estilo do saldo
        ),
        const SizedBox(
          height: 30, // espaço entre o saldo e a próxima linha
        ),
        // linha com botões de ação relacionados à conta
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // distribui os botões uniformemente
          children: [
            // coluna para o botão Pix
            Column(children: [
              IconButton.filledTonal(
                style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll<Size>(
                      Size.fromRadius(30)), // tamanho fixo do botão
                ),
                icon: const Icon(Icons.pix_outlined), // ícone para o Pix
                onPressed:
                    () {}, // ação ao pressionar o botão (ainda não implementada)
              ),
              const Text("Pix", // título do botão
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold)) // estilo do título
            ]),
            // coluna para o botão Pagamentos
            Column(children: [
              IconButton.filledTonal(
                style: const ButtonStyle(
                  fixedSize:
                      MaterialStatePropertyAll<Size>(Size.fromRadius(30)),
                ),
                icon: const Icon(Icons.money), // ícone para pagamentos
                iconSize: 30, // tamanho do ícone
                color: Colors.black, // cor do ícone
                onPressed: () {},
              ),
              const Text("Pagamentos", // título do botão
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold)) // estilo do título
            ]),
            // coluna para o botão QRcode
            Column(children: [
              IconButton.filledTonal(
                style: const ButtonStyle(
                  fixedSize:
                      MaterialStatePropertyAll<Size>(Size.fromRadius(30)),
                ),
                icon: const Icon(
                  Icons.qr_code, // ícone para QRcode
                  size: 30,
                ),
                onPressed: () {},
              ),
              const Text(
                "QRcode", // título do botão
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold), // estilo do título
              )
            ]),
            // coluna para o botão Transferir
            Column(children: [
              IconButton.filledTonal(
                style: const ButtonStyle(
                  fixedSize:
                      MaterialStatePropertyAll<Size>(Size.fromRadius(30)),
                ),
                icon: const Icon(
                  Icons.attach_money, // ícone para transferir dinheiro
                  size: 30,
                ),
                onPressed: () {},
              ),
              const Text("Transferir", // título do botão
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold)) // estilo do título
            ]),
          ],
        ),
        const SizedBox(
          height: 30, // espaço entre a linha de botões e a próxima seção
        ),
        // cartão que exibe "Meus Cartões"
        const Card(
          child: ListTile(
            title: Text("Meus Cartões", // título do cartão
                style:
                    TextStyle(fontWeight: FontWeight.bold)), // estilo do título
            leading: Icon(Icons.credit_card), // ícone de cartão de crédito
          ),
        ),
        const SizedBox(
          height: 30, // espaço entre o cartão e a próxima seção
        ),
        // cartão que oferece uma dica sobre economizar
        Card(
          child: Container(
              padding:
                  const EdgeInsets.all(10), // preenchimento interno do cartão
              child: const ListTile(
                title:
                    Text("Guarde seu dinheiro em caixinhas", // título do cartão
                        style: TextStyle(
                            fontWeight: FontWeight.bold, // estilo do título
                            color: Color(0xFF8A0A5B))), // cor do título
                subtitle: Text(
                    "Acessando a área de planejamento"), // subtítulo com informação adicional
              )),
        )
      ],
    );
  }
}
