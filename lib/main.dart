import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Login",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            width: 400,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Usuário",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Senha",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 350,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Entrar"),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Esqueci a senha"),
              Text("Cadastro"),
            ],
          ),
        ],
      ),
    );
  }
}
