import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Second page"),
    ),
    body: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Welcome To Second Page"),
        Text("Welcome To Second Page"),
        Text("Welcome To Second Page"),
        Text("Welcome To Second Page"),
      ],
    ),
    );
  }
}