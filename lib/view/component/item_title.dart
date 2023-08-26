import 'package:flutter/material.dart';

class ItemTitle extends StatelessWidget {
  const ItemTitle({required this.itemTitle, super.key});
  final String itemTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$itemTitle : ",
      style: const TextStyle(fontSize: 25),
    );
  }
}
