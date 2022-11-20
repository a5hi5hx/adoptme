// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:adoptme/exports.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    if (user?.emailVerified ?? false) {
      return DisplayDemo();
      //print("verified");
      // return const Scaffold(
      //   body: Center(
      //     child: Text("verified"),
      //   ),
      // );
    } else {
      return emailVerify(user);
    }
  }

  Widget emailVerify(User? user) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email Verify"),
      ),
      body: Column(
        children: [
          Text("verify email::"),
          TextButton(
            onPressed: () async {
              await user?.sendEmailVerification();
            },
            child: Text("send link verify::"),
          ),
        ],
      ),
    );
  }
}
