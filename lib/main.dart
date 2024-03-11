import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

//Construtor da classe
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

//Constroi o que será exibido ao usuario
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent)),
      home: const HomePage(),
    );
  }
}

//classe que representa toda a tela do seu aplicativo em seu layout
class HomePage extends StatelessWidget {
  const HomePage({super.key});

//representa o corpo do aplicativo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Atividade"),
                Text("Avaliativa"),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("Nome: Vitor Emanoel Pereira Ribeiro"),
                  ],
                ),
                Row(
                  children: [
                    Text("E-mail: vitin316@gmail.com"),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("2H3"),
                    Text("Matão"),
                  ],
                ),
                Text("2024"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
