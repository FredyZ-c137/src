import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Exercicio(),
));

class Exercicio extends StatefulWidget {
  const Exercicio({Key? key}) : super(key: key);

  @override
  _ExercicioState createState() => _ExercicioState();
}

class _ExercicioState extends State<Exercicio> {
  final TextEditingController _textEditingController1 = TextEditingController();
  final TextEditingController _textEditingController = TextEditingController();

  String _resposta = 'Resultado';
  double sum = 0;

  void valorImc() {
    double valor = double.parse(_textEditingController1.text);
    double valor2 = double.parse(_textEditingController.text);
    double resulta = (valor + valor2) / 2;
    String result = resulta.toStringAsFixed(2).toString();
  setState(() {
    _resposta = result;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Média'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.asset('logo.png'),
          const Padding(padding: EdgeInsets.only(top: 9, left: 9)),
          const Text('Preencha os campos abaixo',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: 'Digite o primeiro valor',
              ),
              enabled: true,
              maxLength: 5,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              obscureText: false,
              controller: _textEditingController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: 'Digite o segundo valor',
              ),
              enabled: true,
              maxLength: 5,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              obscureText: false,
              controller: _textEditingController1,
            ),
          ),
  
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,

              foregroundColor: Colors.white,
            ),
            onPressed: valorImc,
            child: const Text(
              'Calcular!',
              style: TextStyle(
                fontSize: 20,              
              ),
            ),
          ),
          Padding(
          padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: Text(
                'Média: $_resposta',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
