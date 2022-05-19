import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors
        //   .transparent, //appbari daha koyu hale getiriyor.daha görünür hale getiriyor.
        leadingWidth: 24, //soldaki ikonunun konumunu ayarliyon
        actionsIconTheme: IconThemeData(color: Colors.blue, size: 2),
        title: Text(_title),
        leading: Icon(Icons.chevron_left),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_email_unread_sharp),
          ),
          Center(
            child: CircularProgressIndicator(),
          )
        ], //app barın sag tarafını kullanımını saglıyor
      ),
    );
  }
}
