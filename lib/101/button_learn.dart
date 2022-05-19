import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.red;
            })),
          ),
          ElevatedButton(onPressed: null, child: Text('data')),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_rounded)),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          OutlinedButton(onPressed: () {}, child: Text('aaa')),
          OutlinedButton.icon(
              onPressed: () {}, icon: Icon(Icons.add_box), label: Text('data')),
          InkWell(onTap: () {}, child: Text('asdsf')),
          Container(
            height: 200,
            color: Colors.red,
          ),
          SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 10,
                    left: 20,
                    right: 20,
                    top:
                        10), //butonun  icindeki yaziyi konumlandırmaya yarıyor.
                child: Text('Place Bid',
                    style: Theme.of(context).textTheme.headline4),
              ))
        ],
      ),
    );
  }
}
