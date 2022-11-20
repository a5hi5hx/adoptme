// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import './exports.dart';
import 'package:firebase_core/firebase_core.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: RegisterUser(),
//     ),
//   );
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginUser(),
      ),
    );
  } on Exception catch (e) {
    runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ErrorScreen(
        msg: e.toString(),
      ),
    ));
    print("not connected:$e");
  }
}
