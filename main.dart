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

  String _resposta = 'Seu imc é';
  double imc = 0;
  String var1 = '';

  void valorImc() {
    double peso = double.parse(_textEditingController1.text);
    double altura = double.parse(_textEditingController.text);
    double imc = peso / (altura * altura);
    if(imc<18.5){
        var1 = 'baixo do peso';
      }else if(imc>18.5 && imc<24.9){       
        var1 = 'normal';
      }else if(imc>25 && imc<29.9){       
        var1 = 'sobrepeso';
      }else if(imc>30 && imc<39.9){
        var1 = 'obesidade grau 1';
      }else if(imc>40){
        var1 = 'obesidade grave';
      }
      String result = imc.toStringAsFixed(2).toString()+' '+var1;
  setState(() {
    _resposta = result;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peso Ideal'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 10)),
            Image.asset('imc_logo.png'),
            const Padding(padding: EdgeInsets.only(top: 9, left: 9)),
            const Text('Calculo de Peso Ideal, preencha as \ninformações abaixo',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Entre com a altura (ex: 1.70)',
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
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Entre com o Peso(ex: 70.5)',
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
                backgroundColor: Colors.green,
      
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
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Imc: $_resposta',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
