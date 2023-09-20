import 'package:flutter/material.dart';
import 'package:letsgooapp/SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  final String message = 'Tes';

  const FirstScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
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
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
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
      body:  Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
             const Text(
                'MainAxisAligment.SpaceEvenly',
                style: TextStyle(fontSize: 18),
              ),
             const Padding(padding: EdgeInsets.all(8)),
             const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.share),
                  Icon(Icons.thumb_up),
                  Icon(Icons.thumb_down)
                ],
              ),
             const Padding(padding: EdgeInsets.all(8)),
             const Text(
                'MainAxisAligment.SpaceEvenly',
                style: TextStyle(fontSize: 18),
              ),
             const Padding(padding: EdgeInsets.all(8)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.share),
                  Icon(Icons.thumb_up),
                  Icon(Icons.thumb_down)
                ],
              ),
              const Padding(padding: EdgeInsets.all(8)),
              const Text(
                'MainAxisAligment.spaceBetween',
                style: TextStyle(fontSize: 18),
              ),
              const Padding(padding: EdgeInsets.all(8)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.share),
                  Icon(Icons.thumb_up),
                  Icon(Icons.thumb_down)
                ],
              ),
              const Padding(padding: EdgeInsets.all(8)),
              const Text(
                'MainAxisAligment.star',
                style: TextStyle(fontSize: 18),
              ),
              const Padding(padding: EdgeInsets.all(8)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.share),
                  SizedBox(width: 8),
                  Icon(Icons.thumb_up),
                  SizedBox(width: 8),
                  Icon(Icons.thumb_down)
                ],
              ),
              const Padding(padding: EdgeInsets.all(8)),
              const Text(
                'MainAxisAligment.end',
                style: TextStyle(fontSize: 18),
              ),
              const Padding(padding: EdgeInsets.all(8)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.share),
                  SizedBox(width: 8),
                  Icon(Icons.thumb_up),
                  SizedBox(width: 8),
                  Icon(Icons.thumb_down)
                ],
              ),
              ElevatedButton(
                child: const Text('Pindah Screen'),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen(message)));
                },
              )
            ],
          )
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
