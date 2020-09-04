import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  final String text;
  const MyChip({@required this.text, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Colors.grey.withAlpha(80),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
