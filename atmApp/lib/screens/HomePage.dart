import 'package:atmApp/screens/ClienteScreen.dart';
import 'package:atmApp/screens/ContatoScreen.dart';
import 'package:atmApp/screens/EmpresaScreen.dart';
import 'package:atmApp/screens/ServicoScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _pageRoutes(String _route) {
    switch (_route) {
      case 'empresa':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EmpresaScreen()));
        break;
      case 'servicos':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ServicoScreen()));
        break;
      case 'cliente':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ClienteScreen()));
        break;
      case 'contato':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ContatoScreen()));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ATM Consultoria'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(60.0),
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _pageRoutes('empresa');
                    },
                    child: Image(
                      image: AssetImage('images/menu_empresa.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _pageRoutes('servicos');
                    },
                    child: Image(
                      image: AssetImage('images/menu_servico.png'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _pageRoutes('cliente');
                  },
                  child: Image(
                    image: AssetImage('images/menu_cliente.png'),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      _pageRoutes('contato');
                    },
                    child: Image(
                      image: AssetImage('images/menu_contato.png'),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
