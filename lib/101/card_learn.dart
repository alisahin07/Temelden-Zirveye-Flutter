import 'dart:ffi';

import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('card')),
      body: Column(
        children: [
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(child: Text('ali')),
            ),
          ),
          SizedBox(height: 20),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(child: Text('ali')),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardmargin1 = EdgeInsets.all(100.0);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final roundedRectangleBorder =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
    return Card(
      color: Colors.red,
      margin: ProjectMargin.cardmargin1,
      child: child,
      shape: roundedRectangleBorder,
    );
  }
}
