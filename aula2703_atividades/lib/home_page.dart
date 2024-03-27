import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//criando a classe HomePage
class HomePage extends StatelessWidget {
  const HomePage({super.key});

//criando o corpo do nosso aplicativo, sem a aplicacao
  @override
  Widget build(BuildContext context) {
    //variaveis controladoras que tem como funcionalidade
    //controlar os numeros digitados nos TextFields
    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();

    //Scaffold sera aonde definiremos todo nosso corpo
    //e cada funcionalidade do mesmo
    return Scaffold(
      //AppBar: barra do aplicativo, ou barra de navegacao
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      //Corpo do aplicativo + Containers para definirmos
      //tamanhos, processos e colunas
      body: Padding(
        padding: const EdgeInsets.all(20),
        //Coluna: Sera aonde deixaremos Textos, botoes e etc
        //Child: Se refere a um Container com uma unica funcionalidde
        child: Column(
          //Definiremos o padrão do alinhamento de toda a coluna
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //Children: Se refere a um container com mais funcoes
          children: [
            //TextField ira mostrar uma mensagem, sem necessidade de um "textbox"
            textField("Num 1", num1Controller),
            textField("Num 2", num2Controller),
            //Um Container para o botao
            //Container para alinhar tudo em uma forma horizontal
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        soma(context, num1Controller.text, num2Controller.text),
                    child: const Text("Soma"),
                  ),
                  ElevatedButton(
                    onPressed: () => subtracao(
                        context, num1Controller.text, num2Controller.text),
                    child: const Text("Subtração"),
                  ),
                  ElevatedButton(
                    onPressed: () => divisao(
                        context, num1Controller.text, num2Controller.text),
                    child: const Text("Divisão"),
                  ),
                  ElevatedButton(
                    onPressed: () => multiplicacao(
                        context, num1Controller.text, num2Controller.text),
                    child: const Text("Multiplicação"),
                  )
                ]),
          ],
        ),
      ),
    );
  }

  void soma(BuildContext context, String valor1, String valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final soma = num1 + num2;

    final resposta = "$num1 + $num2 = $soma";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  void subtracao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final sub = num1 - num2;

    final resposta = "$num1 - $num2 = $sub";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  void multiplicacao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final multi = num1 * num2;

    final resposta = "$num1 * $num2 = $multi";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  void divisao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final div = num1 / num2;

    final resposta = "$num1 / $num2 = $div";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  Widget textField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}
