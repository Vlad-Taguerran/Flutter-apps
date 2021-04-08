import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: BitCoin(),
    title: "Bitcoin Api",
  ));
}

class BitCoin extends StatefulWidget {
  @override
  _BitCoinState createState() => _BitCoinState();
}

class _BitCoinState extends State<BitCoin> {
  Future<Map> _dataApi() async {
    String url = "https://blockchain.info/ticker";
    http.Response res = await http.get(url);
    return jsonDecode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/bitcoin.png",
              width: 340,
            ),
            Padding(
              padding: EdgeInsets.only(top: 34.6),
              child: FutureBuilder<Map>(
                future: _dataApi(),
                builder: (context, snapshot) {
                  String valorBitcoin;
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      break;
                    case ConnectionState.waiting:
                      valorBitcoin = " Carregando...";
                      break;
                    case ConnectionState.active:
                      break;
                    case ConnectionState.done:
                      if (snapshot.hasError) {
                        valorBitcoin = " Erro ao carregar";
                      } else {
                        double resultado = snapshot.data["BRL"]["buy"];
                        valorBitcoin = "Preço Atual: ${resultado.toString()}";
                      }
                      break;
                  }
                  return Text(valorBitcoin);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.6),
              child: FlatButton(
                height: 68.0,
                padding: EdgeInsets.symmetric(horizontal: 90.0),
                onPressed: () {
                  _dataApi();
                },
                child: Text(
                  "Atualizar",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                color: Colors.amber[400],
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
