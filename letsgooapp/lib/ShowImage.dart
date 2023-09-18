import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Show Image'),
        ),
        body: const Center(
          child: Text(
            'Ini Font',
            style: TextStyle(fontFamily: 'Poppins', fontSize: 32),
          ),
        )
        // Column(
        //   children: <Widget>[
        //     Image.network(
        //       'https://awsimages.detik.net.id/community/media/visual/2022/04/01/manga-one-piece_169.webp?w=600&q=90',
        //       width: 200,
        //       height: 200,
        //     ),
        //     Image.asset(
        //       'images/onepiece.png',
        //       width: 200,
        //       height: 200,
        //     )
        //   ],
        // ),
        );
  }
}
