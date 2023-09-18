import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputCheckbox extends StatefulWidget {
  const InputCheckbox({Key? key}) : super(key: key);

  @override
  State<InputCheckbox> createState() => _InputCheckboxState();
}

class _InputCheckboxState extends State<InputCheckbox> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: ListTile(
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value) {
            setState(() {
              agree = value!;
            });
          },
        ),
        title: Text('Agree / Disagree'),
      ),
    );
  }
}
