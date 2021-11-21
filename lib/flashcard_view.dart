import 'package:flutter/material.dart';

class flashcardview extends StatelessWidget {
  final String text;
  const flashcardview({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
