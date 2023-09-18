import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidgetController extends StatefulWidget {
  const InputWidgetController({Key? key}) : super(key: key);

  @override
  State<InputWidgetController> createState() => _InputWidgetController();
}

class _InputWidgetController extends State<InputWidgetController>{
  TextEditingController _controller = TextEditingController();

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
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your name',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        content: Text('Hello, ${_controller.text}'),
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
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
}
