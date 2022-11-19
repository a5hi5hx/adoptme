// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class displayDemo extends StatelessWidget {
  const displayDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/assets/welcome/dog.png'),
              ),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }
}
