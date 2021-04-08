import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List _frases = [
    "Toda glória advém de ousar começar”. (Eugene F. Ware)",
    "Todas as pequenas coisas, juntas, formam uma base de clientes fiéis e mais lucrativas”. (Bruce Hammonds)",
    "“A pessoa que não acredita em si mesmo não acredita em mais nada”. (Roy L. Smith, adaptado)",
    "Grandes mentes estão prontas não apenas para explorar oportunidades, mas para criá-las”. (Cotton)",
    "“O primeiro passo indispensável para conseguir coisas na vida é decidir o que você quer”. (Ben Stein)",
    "“A percepção quando chega a ser julgada por outros é a realidade”. (Jack Lowenstein)",
    "“O pior fracassado do mundo é aquele que perdeu o entusiasmo”. (H. W. Arnold)",
    "“A maior recompensa pelo trabalho não é o que a pessoa ganha, é o que ela se torna através dele”. (John Ruskin)",
    " “Quando as expectativas aumentam inicia-se um ciclo interminável e contínuo de melhoria”. (Steven Hronec)"
  ];
  var _frase = "Click abaixo para gerar uma nova frase";
  void _gerar() {
    var _numrand = Random().nextInt(_frases.length);

    setState(() {
      _frase = _frases[_numrand];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green[600],
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset("images/logo.png"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25.3, 0.0, 25.3, 0.0),
            child: Text(
              _frase,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          GestureDetector(
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  "Nova frase",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                color: Colors.green[300],
                textColor: Colors.white,
                onPressed: () {
                  _gerar();
                }),
          ),
        ],
      ),
    );
  }
}
