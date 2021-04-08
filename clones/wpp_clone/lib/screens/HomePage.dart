import 'package:flutter/material.dart';
import 'package:wpp_clone/widget/CardWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[900],
            title: Text('wpp-clone'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  onPressed: null),
              IconButton(
                  icon:
                      Icon(Icons.chat_rounded, color: Colors.white, size: 25.0),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.more_vert_rounded, size: 25.0),
                  onPressed: null)
            ],
            bottom: TabBar(
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: 'Chat'),
                Tab(text: 'status'),
                Tab(
                  text: 'calls',
                )
              ],
            ),
          ),
          body: CardWidget(),
        ),
      ),
    );
  }
}
