import 'package:flutter/material.dart';

class GraphInfoPage extends StatelessWidget {
  final List<Widget> children;
  const GraphInfoPage({@required this.children, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: SingleChildScrollView(
          child: Wrap(
        children: children,
      )),
    );
  }
}
