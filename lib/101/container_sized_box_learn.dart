import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  final cizimText sekil1 = cizimText();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text(sekil1.sekil * 500),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            constraints: const BoxConstraints(
                maxWidth: 200, minWidth: 100, maxHeight: 200, minHeight: 100),
            child: Text('aa' * 1),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtulity.boxdecoration,
          )
        ],
      ),
    );
  }
}

class cizimText {
  final String sekil = '*';
}

class ProjectUtulity {
  static BoxDecoration boxdecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    color: Colors.red,
    // shape: BoxShape.circle,
    border: Border.all(width: 3, color: Colors.green),
    boxShadow: const [
      BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 7)
    ],
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
          color: Colors.red,
          // shape: BoxShape.circle,
          border: Border.all(width: 3, color: Colors.green),
          boxShadow: const [
            BoxShadow(
              color: Colors.green,
              offset: Offset(0.1, 1),
              blurRadius: 7,
            )
          ],
        );
}
