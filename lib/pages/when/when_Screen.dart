import 'package:flutter/material.dart';

class WhenScreen extends StatelessWidget {
  const WhenScreen({Key key}) : super(key: key);
  static const String title = "Quando ?";
  static const Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                color: Colors.red,
                width: constraints.maxWidth / 2,
                height: constraints.maxHeight,
              );
            },
          )
        ],
      ),
    );
  }
}
