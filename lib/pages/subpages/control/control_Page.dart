import 'package:flutter/material.dart';
import 'package:infoGraficAutomation/global_Widgets/graphWidget.dart';
import 'package:infoGraficAutomation/pages/subpages/control/contolList_Widget.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({Key key}) : super(key: key);
  static const String title = "Ferramentas de Controle";
  static const Color color = Colors.yellow;

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
              child: GraphWidget(asset: "assets/control/control.png"),
            ),
            ControlListWidget(
              screenWidth: constraints.maxWidth,
            ),
          ],
        );
      },
    );
  }
}
