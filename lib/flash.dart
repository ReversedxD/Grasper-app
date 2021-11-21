// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_first/flashcard.dart';
import 'package:flutter_first/flashcard_view.dart';

class flashpage extends StatefulWidget {
  @override
  State<flashpage> createState() => _flashpageState();
}

class _flashpageState extends State<flashpage> {
  List<Flashcard> _flashcards = [
    Flashcard(question: "yo what is my name", answer: "abcd"),
    Flashcard(question: "my bro name", answer: "why"),
    Flashcard(question: "my show name", answer: "so serious"),
    Flashcard(question: "Best football player", answer: "Lionel Messi"),
    Flashcard(question: "2nd Best football player", answer: "Cristiano Ronaldo")
  ];

  int _currindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flash Cards"),
          backgroundColor: Colors.deepPurple[400],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: FlipCard(
                  front: flashcardview(text: _flashcards[_currindex].question),
                  back: flashcardview(text: _flashcards[_currindex].answer),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton.icon(
                    onPressed: prevcard,
                    icon: Icon(Icons.chevron_left),
                    label: Text("Prev"),
                  ),
                  OutlinedButton.icon(
                    onPressed: nextcard,
                    icon: Icon(Icons.chevron_right),
                    label: Text("next"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @protected
  void nextcard() {
    setState(() {
      _currindex = (_currindex + 1 < _flashcards.length) ? _currindex + 1 : 0;
    });
  }

  void prevcard() {
    setState(() {
      _currindex =
          (_currindex - 1 >= 0) ? _currindex - 1 : _flashcards.length - 1;
    });
  }
}
