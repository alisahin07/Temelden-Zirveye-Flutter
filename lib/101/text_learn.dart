import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TextLearnView extends StatelessWidget {
  final String name = 'veli';
  final ProjectKeys keys =
      ProjectKeys(); //buradan ProjectKeys içindeki sınıflara erismis oluyoruz.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'welcome $name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text('welcome $name ${name.length}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: ProjectStyles.welcomeStyle),
            Text('welcome $name ${name.length}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ProjectColors
                        .welcomeColor)), //themadan kullanım tavsiye edilir text style icin
            Text(keys.welcome) //bu sekilde text kullanmalısın.
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      color: Colors.red,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.green;
}

class ProjectKeys {
  // textleri bu sekilde kullanmamız bize katkı saglayacaktır.
  final String welcome = "Merhaba";
}
