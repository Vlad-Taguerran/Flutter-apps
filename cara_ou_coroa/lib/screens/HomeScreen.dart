import 'dart:math';

import 'package:cara_ou_coroa/screens/GameScreen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List itens = ['cara', 'coroa'];
    var numero = Random().nextInt(itens.length);
    var result = itens[numero];
    void rotas() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GameScreen(result)));
    }

    return Container(
      color: Color(0xff61bd86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/logo.png'),
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: GestureDetector(
              child: FlatButton(
                  onPressed: () {
                    rotas();
                  },
                  child: Image.asset('images/botao_jogar.png')),
            ),
          )
        ],
      ),
    );
  }
}
