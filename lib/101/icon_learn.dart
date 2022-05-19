import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Column(
        children: [IconButton(onPressed: () {}, icon: iconIcin._icon)],
      ),
    );
  }
}

class iconIcin {
  static Icon _icon = Icon(
    Icons.message_outlined,
    color: Colors.blue,
    size: 40,
  );
}
