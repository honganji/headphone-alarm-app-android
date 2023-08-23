import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Expanded(child: child),
            Container(
              decoration: const BoxDecoration(color: Colors.blueAccent),
              height: height * 0.10,
              child: const Center(
                child: Text(
                  "Ads",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
