import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollingScreen extends StatelessWidget{
  // final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final List<int> numberList = [for (var i = 1; i <= 20; i++) i];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      //ListView Sparate

      ListView.separated(
          itemCount: numberList.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  '${numberList[index]}',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            );
            },
        separatorBuilder: (BuildContext context, int index) {
            return const Divider();
      },

      // Listview Builder
      //   ListView.builder(
      //     itemCount: numberList.length,
      //     itemBuilder: (BuildContext context, int index){
      //       return Container(
      //         height: 250,
      //         decoration: BoxDecoration(
      //           color: Colors.grey,
      //           border: Border.all(color: Colors.black),
      //         ),
      //         child: Center(
      //           child: Text("${numberList[index]}",
      //           style: const TextStyle(fontSize: 48, fontFamily: "Poppins"),
      //           ),
      //         ),
      //       );
      //     },
      //   )

      // Menampilkan Item Secara Dinamis
      //ListView(
      //   children: numberList.map((number){
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black)
      //       ),
      //
      //       child: Center(
      //         child: Text('$number', style: const TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     );
      //   }).toList(),
      // ),
    ),
    );
  }
}


