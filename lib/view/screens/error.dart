import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Page"),
      ),
      body: Center(
          child: Column(
        children: [
          const Text(
            "There something worong with this app.",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Home"),
          ),
        ],
      )),
    );
  }
}
