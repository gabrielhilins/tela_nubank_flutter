import 'package:flutter/material.dart';
import 'package:nubank/appbody.dart';

// função principal que inicia o aplicativo
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // desativa a faixa de depuração
      title: 'Nubank', // título do aplicativo
      home: Scaffold(
        backgroundColor: Colors.white, // cor de fundo do aplicativo
        appBar: AppBar(
          backgroundColor: Color(0xFFBA4DE3), // cor de fundo da AppBar
          actions: [
            // botões de ação no canto direito da AppBar
            IconButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color(0xffa444ca)), // cor de fundo do botão
              ),
              icon: const Icon(
                  Icons.visibility_outlined), // ícone de visibilidade
              onPressed: () {}, // ação ao pressionar o botão
            ),
            IconButton(
              icon: const Icon(Icons.question_mark_rounded), // ícone de ajuda
              onPressed: () {}, // ação ao pressionar o botão
            ),
            IconButton(
              icon:
                  const Icon(Icons.mark_email_read_outlined), // ícone de e-mail
              onPressed: () {}, // ação ao pressionar o botão
            ),
          ],
          leading: IconButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color(0xFFBA4DE3))), // cor de fundo do botão
            icon: const Icon(Icons.person_outline,
                color: Colors.white70), // ícone de perfil
            color: Colors.white70, // cor do ícone
            onPressed: () {}, // ação ao pressionar o botão
          ),
        ),
        body:
            const AppBody(), // corpo do aplicativo que contém a lógica principal
      ),
    );
  }
}
