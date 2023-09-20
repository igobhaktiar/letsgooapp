import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String tes;

  const SecondScreen(this.tes, {Key? key}): super(key : key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tes),
          ],
        ),
      ),
      //   decoration:  BoxDecoration(
      //     color: Colors.red,
      //     border: Border.all(color: Colors.green, width: 3),
      //     borderRadius: BorderRadius.circular(10),
      //     // shape: BoxShape.circle
      //     boxShadow: const [
      //       BoxShadow(
      //           color: Colors.black,
      //         offset: Offset(3, 6),
      //         blurRadius: 10,
      //       )
      //     ]
      //   ),
      //   // width: 200,
      //   // height: 100,
      //   padding: const EdgeInsets.all(10),
      //   margin: const EdgeInsets.all(10),
      //   child: const Text('Hi',
      //   style: TextStyle(fontSize: 40),
      //   ),
      // ),
      //
      // body: const Center(
      //    child: Text('Hello Word!'),
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.delete),
        onPressed: () {},
      ),
    );
  }
}
