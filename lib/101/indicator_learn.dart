import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indicator Learn'),
        actions: [centerCircularRedProgressIndicator()],
      ),
      body: Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}

class centerCircularRedProgressIndicator extends StatelessWidget {
  const centerCircularRedProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
            color: Colors.amber, strokeWidth: 10, value: 0.9));
  }
}
