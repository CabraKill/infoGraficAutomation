import 'package:flutter/material.dart';

class GraphWidget extends StatelessWidget {
  final String asset;
  const GraphWidget({@required this.asset, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(asset),
    );
  }
}
