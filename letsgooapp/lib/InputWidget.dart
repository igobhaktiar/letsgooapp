import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({Key? key}) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidget();
}

class _InputWidget extends State<InputWidget>{
  String _name = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your name',
              ),
              onChanged: (String value){
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        content: Text('Hello, $_name'),
                      );
                });
            },
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}