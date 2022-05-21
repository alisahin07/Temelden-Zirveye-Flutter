import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PaddingLean extends StatelessWidget {
  const PaddingLean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(height: 100, color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
            child: Container(height: 100, width: 200, color: Colors.red),
          ),
          Padding(
            padding: ProjectPadding.ProjectPadding1,
            child: Text('data'),
          )
        ],
      ),
    );
  }
}

class ProjectPadding {
  static const ProjectPadding1 =
      EdgeInsets.symmetric(horizontal: 15, vertical: 22);
}
