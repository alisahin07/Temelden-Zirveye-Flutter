import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);

  final String _title = 'CustomWidget';
  final String _btndata = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFootButton(
                  btndata: _btndata,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          CustomFootButton(
            btndata: _btndata,
          ),
        ],
      ),
    );
  }
}

class _PaddingUtulity {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets noormal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFootButton extends StatelessWidget with _ColorUtulity, _PaddingUtulity {
  CustomFootButton({Key? key, required String btndata})
      : _btndata = btndata,
        super(key: key);

  final String _btndata;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: normalPadding,
        child: Text(
          _btndata,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(primary: redColor, shape: StadiumBorder()),
    );
  }
}

class _ColorUtulity {
  final Color whiteColor = Colors.white;
  final Color redColor = Colors.red;
}
