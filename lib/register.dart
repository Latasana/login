import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "FULL NAME:",
              icon: Icon(Icons.person)
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "MOBILE NUMBER:",
              icon: Icon(Icons.phone)
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "ADDRESS:",
              icon: Icon(Icons.location_on_outlined)
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "PIN NO:",
              icon: Icon(Icons.numbers)
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "EMAIL:",
              icon: Icon(Icons.mail)
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("SUBMIT"))
        ],
      ),
    );
  }
}