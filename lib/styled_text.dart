import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.data, {super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
    );
  }
}
