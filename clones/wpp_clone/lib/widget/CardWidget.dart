import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://avatars3.githubusercontent.com/u/59298864?s=460&u=2b9a5b13f29224a626d59f94c18f14fa23237332&v=4'))),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 35.0),
            child: Text(
              'Vlad',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Schyler',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 45),
            child: Text('Mensagens.......'),
          ),
        ],
      ),
    );
  }
}
