import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button>{
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column (
        children: <Widget>[
          ElevatedButton(onPressed: (){

          }, child: const Text("Ini Tombol")),
          TextButton(onPressed: (){

          }, child: const Text("Ini Tombol Text")),
          OutlinedButton(onPressed: (){},
              child: const Text('Ini Outline Button')),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.add)),
          DropdownButton<String>(
              items: const<DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                    value: 'Dart',
                    child: Text('Dart')
                ),
                DropdownMenuItem<String>(
                    value: 'Kotlin',
                    child: Text('Kotlin')
                ),
                DropdownMenuItem<String>(
                    value: 'Swift',
                    child: Text('Swift')
                ),
              ],
              value: language,
              hint: const Text('Select Language'),
              onChanged: (String? value) {
                setState((){
                   language = value;
                });
              },
              ),
        ],
      )
    );
  }
}



