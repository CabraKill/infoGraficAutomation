import 'package:flutter/material.dart';

class InfoListItem extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const InfoListItem({@required this.title, @required this.children, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 25),
          ),
          Wrap(
            runSpacing: 5,
            spacing: 10,
            children: children,
          ),
        ],
      ),
    );
  }
}
