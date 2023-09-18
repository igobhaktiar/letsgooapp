import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLightSwitch extends StatefulWidget {
  const MyLightSwitch({Key? key}) : super(key: key);

  @override
  State<MyLightSwitch> createState() => _MyLightSwitchState();
}

class _MyLightSwitchState extends State<MyLightSwitch> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Switch(
        value: lightOn,
        onChanged: (bool value) {
          setState(() {
            lightOn = value;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(lightOn ? 'Light On' : 'Light Off'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }
}
