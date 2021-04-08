import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  String resultado;
  GameScreen(this.resultado);
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.resultado);
    return Container(
      color: Color(0xff61bd86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/moeda_cara.png'),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('images/botao_voltar.png'),
          ),
        ],
      ),
    );
  }
}
