import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String _title = 'Create First Title';
    final String _description = 'ADD NOTE!';
    final String _createNote = 'Create A Note';
    final String _importNote = 'ImportNotes';
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle.dark, //saati sarj seviyesini gosteriyor
        title: Text('NOTEDEMOS s'),
      ),
      body: Padding(
        padding: PaddingItem.horizantalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBook),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItem.verticalPadding,
              child: _SubTitleWidget(
                title: _description,
                textAlign: TextAlign.end,
              ),
            ),
            Spacer(), // bunu sonra gosterecek
            _createButton(_createNote, context),
            TextButton(
              onPressed: () {},
              child: Text(
                _importNote,
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(String _createNote, BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
          child: Center(
              child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headline5,
          )),
          height: ButonHeights.buttonNormalheight),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title * 8,
      textAlign: TextAlign.center, //testi ortadan baslattik
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700));
  }
}

class PaddingItem {
  static const EdgeInsets horizantalPadding =
      EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButonHeights {
  static const double buttonNormalheight = 50;
}
