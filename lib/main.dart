import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

//classe aplicacao, reponsavel por gerenciar todo o nosso app.
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    //MaterialApp é responsável por gerenciar e estabelecer parões
    //para todas as telas do app. Nele temos:
    //configuração das telas
    //estilos a serem aplicados na tela (via tema)
    //toda estruturação de tela baseada no Material (material.io)
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink)),
      home: const HomePage(),
    );
  }
}

//classe que representa a tela do aplicativo em todo seu layout.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

//Corpo do aplicativo, aonde ficam títulos, corpo do aplicativo e etc...
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Resumo do Pedido: ",
                style: textTheme.headlineLarge,
              ),
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Text("1x")),
                const Expanded(child: Text("Banana")),
                const Text("2,80"),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text("2x"),
                ),
                const Expanded(
                  child: Text("Morango"),
                ),
                const Text("8,90"),
              ],
            ),
            const Text("11,70")
          ],
        ),
      ),
    );
  }
}
