import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        title: 'Magic 8 ball',
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBallState = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    magicBallState = Random().nextInt(5) + 1;
                  });
                  print('Pressed Button');
                },
                child: Image.asset('images/ball$magicBallState.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
