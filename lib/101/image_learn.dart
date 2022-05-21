import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IMAGE')),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 200,
            //child: Image.asset(ImageItems().appleWithBook),
            child: PngImage(name: ImageItems().apple2),
          ),
          Image.network(
            'https://www.cumhuriyet.com.tr/Archive/2021/11/29/1888598/kapak_112247.jpg',
            errorBuilder: (context, error, stackTrace) => PngImage(
              name: ImageItems().appleWithBook,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "indir";
  final String apple2 = "apple_black_white";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWith_path, fit: BoxFit.cover);
  }

  String get _nameWith_path => 'assets/png/$name.png';
}
