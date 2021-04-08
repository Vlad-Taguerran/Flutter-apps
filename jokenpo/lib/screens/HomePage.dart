import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _mensagem = "Escolha uma opição a baixo";
  var _appPadrao = Image.asset(
    "images/padrao.png",
    width: 120.0,
  );
  void _jogar(String escolha) {
    final List<String> _appEscolha = ["pedra", "papel", "tesoura"];
    var _appJogar = Random().nextInt(_appEscolha.length);
    var _app = _appEscolha[_appJogar];
    print(_app);
    print(escolha);
    switch (_app) {
      case "pedra":
        setState(() {
          this._appPadrao = Image.asset("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._appPadrao = Image.asset("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._appPadrao = Image.asset("images/tesoura.png");
        });
        break;
      default:
    }
    if ((escolha == "pedra" && _app == "papel") ||
        (escolha == "papel" && _app == "tesoura")) {
      setState(() {
        _mensagem = "você Perdeu";
      });
    } else if ((escolha == "pedra" && _app == "pedra") ||
        (escolha == "papel" && _app == "papel") ||
        (escolha == "tesoura" && _app == "tesoura")) {
      setState(() {
        _mensagem = "Empate";
      });
    } else {
      setState(() {
        _mensagem = "Você ganhou";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jokenpo"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Escolha do App:",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              _appPadrao,
              Text(
                this._mensagem,
                style: TextStyle(fontSize: 18.0),
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () => _jogar('pedra'),
                      child: Image.asset(
                        "images/pedra.png",
                        width: 80.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () => _jogar('papel'),
                      child: Image.asset(
                        "images/papel.png",
                        width: 80.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () => _jogar('tesoura'),
                      child: Image.asset(
                        "images/tesoura.png",
                        width: 80.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
