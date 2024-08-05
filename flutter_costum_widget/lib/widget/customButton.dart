import 'package:flutter/material.dart';

class Custombutton extends StatefulWidget {
  final String txt;
  final Function() fct;
  const Custombutton({
    super.key,
    required this.txt,
    required this.fct,
  });

  @override
  State<Custombutton> createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            widget.fct();
          },
          child: Text(widget.txt),
        ),
      ),
    );
  }
}
