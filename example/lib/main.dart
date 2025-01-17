import 'package:flutter/material.dart';

import 'package:dart_pad_widget/constants.dart';
import 'package:dart_pad_widget/dart_pad_widget.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DartPad(
                  key: Key('example1'),
                  width: 500,
                  height: 400,
                  code: 'void main() => print("Hello DartPad Widget");',
                ),
                DartPad(
                  key: Key('example2'),
                  width: 1000,
                  height: 400,
                  embeddingChoice: EmbeddingChoice.flutter,
                  darkMode: true,
                  code: """import 'package:flutter/material.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            child: Text('Hello, World!'),
          ),
        ),
      ),
    );
  }
}""",
                ),
                DartPad(
                  key: Key('example3'),
                  width: 800,
                  height: 400,
                  split: 60,
                  embeddingChoice: EmbeddingChoice.flutter,
                  darkMode: false,
                  code: """import 'package:flutter/material.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            child: Text('Hello, World!'),
          ),
        ),
      ),
    );
  }
}""",
                ),
              ],
            ),
          )),
        ),
      ),
    ),
  );
}
