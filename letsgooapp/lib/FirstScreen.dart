import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
      body: const Padding (padding: EdgeInsets.all(16),
        child:
        Column(
          children: <Widget> [
            Text('MainAxisAligment.SpaceEvenly', style: TextStyle(fontSize: 18),),
            Padding(padding: EdgeInsets.all(8)),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
            Padding(padding: EdgeInsets.all(8)),
            Text('MainAxisAligment.SpaceEvenly', style: TextStyle(fontSize: 18),),
            Padding(padding: EdgeInsets.all(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
            Padding(padding: EdgeInsets.all(8)),
            Text('MainAxisAligment.spaceBetween', style: TextStyle(fontSize: 18),),
            Padding(padding: EdgeInsets.all(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.share),
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down)
              ],
            ),
            Padding(padding: EdgeInsets.all(8)),
            Text('MainAxisAligment.star', style: TextStyle(fontSize: 18),),
            Padding(padding: EdgeInsets.all(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.share),
                SizedBox(width: 8),
                Icon(Icons.thumb_up),
                SizedBox(width: 8),
                Icon(Icons.thumb_down)
              ],
            ),
            Padding(padding: EdgeInsets.all(8)),
            Text('MainAxisAligment.end', style: TextStyle(fontSize: 18),),
            Padding(padding: EdgeInsets.all(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.share),
                SizedBox(width: 8),
                Icon(Icons.thumb_up),
                SizedBox(width: 8),
                Icon(Icons.thumb_down)
              ],
            ),
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
        onPressed: (){},
      ),
    );
  }
}
