import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/youtube.png"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.blue[400],
              label: "Inicio",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              label: "Inicio",
              icon: Icon(Icons.whatshot),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              label: "subscription",
              icon: Icon(Icons.subscriptions),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              label: "subscription",
              icon: Icon(Icons.folder),
            ),
          ]),
    );
  }
}
