import 'package:flutter/material.dart';
class LoginPage1 extends StatefulWidget {
  final String user1;
  final String password1;

  const LoginPage1({ Key? key, required this.user1, required this.password1,  }) : super(key: key);

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: Table(
        children: [
          TableRow(
            children: [
              Text("User:"),
              Text(widget.user1)
            ]
          ),
          TableRow(
            children: [
              Text("Password:"),
              Text(widget.password1)
            ]
          )
        ],
      )
    );
  }
}