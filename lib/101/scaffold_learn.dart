import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'asdasd',
        ),
      ),
      body: Text("merhaba"),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      drawer: Drawer(),
      bottomNavigationBar: Container(
        height: 111,
        decoration: ProjectUtulity.boxdecoration,
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined), label: 'a'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined), label: 'b')
        ]),
      ),
    );
  }
}
