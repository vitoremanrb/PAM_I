import 'package:aula2703_atividades/home_page.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(251, 83, 1, 97)),
      ),
      home: const HomePage(),
    );
  }
}
