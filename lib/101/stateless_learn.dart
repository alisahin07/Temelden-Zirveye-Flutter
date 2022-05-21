import 'package:flutter/material.dart';

class StatlessLearn extends StatelessWidget {
  const StatlessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('aa'),
      ),
      body: Column(
        children: [
          TitleTextWidget(text: 'ali1'),
          TitleTextWidget(text: 'ali2'),
          TitleTextWidget(text: 'ali3'),
          emptyBox(),
          TitleTextWidget(text: 'ali4'),
          TitleTextWidget(text: 'ali5'),
          emptyBox(),
          _CustomContainer(),
          emptyBox(),
          TitleTextWidget(text: 'ali5'),
        ],
      ),
    );
  }

  SizedBox emptyBox() => SizedBox(height: 12);
}

class _CustomContainer extends StatelessWidget {
  //_ alt cizgi yapmamız private halini almamızı sagladı
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
