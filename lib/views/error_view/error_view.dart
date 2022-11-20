import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String msg;
  const ErrorScreen({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [Text(msg)],
        ),
      ),
    );
  }
}
