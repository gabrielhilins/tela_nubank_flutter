import 'package:flutter/material.dart';

// a classe 'DescubraMais' representa a seção para descobrir mais informações no aplicativo
class DescubraMais extends StatelessWidget {
  const DescubraMais({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // alinha os elementos à esquerda
      children: [
        // a linha abaixo contém o título "Descubra mais" e um ícone de seta
        Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // distribui espaço entre os elementos
          children: [
            Text(
              "Descubra mais", // título da seção
              style: TextStyle(fontSize: 24), // estilo do texto
            ),
            Icon(Icons
                .arrow_forward_ios_outlined), // ícone para indicar ação ou navegação
          ],
        ),
        SizedBox(height: 10), // espaço entre o título e o cartão
        GestureDetector(
          onTap: () {}, // ação ao pressionar o cartão (ainda não implementada)
          child: Card(
            elevation: 5, // sombra do cartão
            margin: EdgeInsets.all(10), // margem em torno do cartão
            child: SingleChildScrollView(
              // permite rolagem do conteúdo caso seja necessário
              child: Column(
                children: [
                  // imagem que representa o seguro de vida
                  Image.asset(
                    'assets/images/segurodevida.png', // caminho da imagem
                    fit: BoxFit.fill, // ajusta a imagem para preencher o espaço
                  ),
                  SizedBox(height: 10), // espaço entre a imagem e o texto
                  Padding(
                    padding:
                        const EdgeInsets.all(8.0), // espaço interno do cartão
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // alinha o texto à esquerda
                      children: [
                        // título dentro do cartão
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            "Seguro de Vida", // título do serviço
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight:
                                    FontWeight.bold), // estilo do título
                          ),
                        ),
                        SizedBox(
                            height: 10), // espaço entre o título e a descrição
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            "Cuide bem de quem você ama de um jeito simples", // descrição do serviço
                          ),
                        ),
                        SizedBox(
                            height: 15), // espaço entre a descrição e o botão
                        // botão para conhecer mais sobre o seguro
                        Padding(
                          padding: EdgeInsets.only(right: 5.0, bottom: 10.0),
                          child: ElevatedButton(
                            onPressed:
                                () {}, // ação ao pressionar o botão (ainda não implementada)
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(
                                  4.0), // sombra do botão
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffa444ca), // cor de fundo do botão
                              ),
                            ),
                            child: const Text(
                              "Conhecer", // texto do botão
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white), // estilo do texto
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
