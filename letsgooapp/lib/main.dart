import 'package:flutter/material.dart';
import 'package:letsgooapp/Button.dart';
import 'package:letsgooapp/Expanded.dart';
import 'package:letsgooapp/FirstScreen.dart';
import 'package:letsgooapp/InputCheck.dart';
import 'package:letsgooapp/InputRadio.dart';
import 'package:letsgooapp/InputWidget.dart';
import 'package:letsgooapp/InputWidgetController.dart';
import 'package:letsgooapp/ScrollingScreen.dart';
import 'package:letsgooapp/ShowImage.dart';
import 'package:letsgooapp/TambahFont.dart';
import 'package:letsgooapp/WidgetFlexible.dart';
import 'package:letsgooapp/switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),

      home: const WidgetFlexible(),
      //   home: const Scaffold(
      //     body: Center(
      //       child: BiggerText(text: "Hello, world!"),
      //     ),
      //   ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}
