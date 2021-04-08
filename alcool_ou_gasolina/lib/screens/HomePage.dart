import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textEditingControllerAlcool = TextEditingController();
  TextEditingController _textEditingControllerGasolina =
      TextEditingController();
  String _resultado =
      'Saiba qual a melhor opção para o abastecimento do seu carro';
  void calcular() {
    String _tratadoAlcool = _textEditingControllerAlcool.text;
    String _tratadoGasolina = _textEditingControllerGasolina.text;

    double precoAlcool = double.tryParse(_tratadoAlcool.replaceAll(',', '.'));
    double precoGasolina =
        double.tryParse(_tratadoGasolina.replaceAll(',', '.'));
    if (precoAlcool == null) {
      setState(() {
        _resultado =
            'Não conseguimos calcular, tente novamente e preencha todos os campos ';
      });
    } else if ((precoAlcool / precoGasolina) <= 0.7) {
      setState(() {
        _resultado = 'Use Álcool';
      });
    } else {
      setState(() {
        _resultado = "Use Gasolina";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Álcool ou Gasolina"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Image.asset('images/logo.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    _resultado,
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                TextField(
                  controller: _textEditingControllerAlcool,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Preço álcool, ex: 3.2',
                  ),
                  style: TextStyle(fontSize: 18.0),
                ),
                TextField(
                  controller: _textEditingControllerGasolina,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Preço Gasolina, ex: 3.2',
                  ),
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: RaisedButton(
                    onPressed: () {
                      calcular();
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      'Calcular',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
