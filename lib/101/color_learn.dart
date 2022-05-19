import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Column(
        children: [
          Container(color: Theme.of(context).errorColor, child: Text('data')),
        ],
      ), //  Theme.of(context).errorColor yazarak  ana maindeki color rengini kullanmis olduk.
    );
  }
}

class ColorsItems {
  static Color purchase = Color.fromARGB(150, 150, 51, 255);

  static Color sulu = Color.fromARGB(198, 237, 97, 1);
}
