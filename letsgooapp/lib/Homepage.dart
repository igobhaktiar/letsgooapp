import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    Size screensize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors. blueGrey,
      body: Row(
        children: [
          Expanded(
              child: LayoutBuilder(
                builder: (BuildContext contex, BoxConstraints constraints){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('MediaQuery : ${screensize.width.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      Text('LayouBuilder: ${constraints.maxWidth < 900}',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                      )
                    ],
                  );
                }
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints){
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('MediaQuery : ${screensize.width.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                      ),
                      Text('LayoutBuilder : ${constraints.maxWidth}',
                      style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      )
    );
  }
}