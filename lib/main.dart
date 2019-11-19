import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//TODO: do apply pod caching.
// make a list
// integrate with firebase
// find a detail of Github Actions.
// how make a ipa and publish to ios tester with CI as automatically.

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TitleBox('COLLECTIONS'),
              
            ],
          ),
        ),
      ),
    );
  }
}

class TitleBox extends StatelessWidget {
  final String text;
  // TitleBox(data) : this.text = data;
  TitleBox(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 50, 0, 30),
      child: Container(
        child: Text(
          text,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
