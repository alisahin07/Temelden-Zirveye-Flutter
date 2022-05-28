import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile Learn'),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {},
                title: RandomImage(),
                subtitle: Text('How do you use card'),
                leading: Icon(Icons.money),
                trailing: SizedBox(child: Icon(Icons.chevron_right), width: 10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
