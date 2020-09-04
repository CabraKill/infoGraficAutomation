import 'package:flutter/material.dart';
import 'package:infoGraficAutomation/pages/subpages/when/subpages/graphWhen_Page.dart';
import 'package:infoGraficAutomation/pages/subpages/when/subpages/listWhen_Page.dart';

class WhenPage extends StatelessWidget {
  const WhenPage({Key key}) : super(key: key);
  static const String title = "Contexto Histórico";
  static const Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: GraphWhenPage(),
            ),
            LimitedBox(
              maxWidth: 500,
                          child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: ListWhenPage(),
              ),
            ),
          ],
        );
      },
    );
  }
}
