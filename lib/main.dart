import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Center(
              child: Text('Magic 8 Ball'),
            ),
            backgroundColor: Colors.teal,
          ),
          body: MagicPage(),
        ),
      ),
    );

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int num = 1;
  void ChangeAnswer() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    ChangeAnswer();
                  },
                  child: Image.asset('images/ball$num.png')))
        ],
      ),
    );
  }
}
