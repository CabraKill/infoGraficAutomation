import 'package:flutter/material.dart';
import 'package:infoGraficAutomation/global_Widgets/graphWidget.dart';
import 'package:infoGraficAutomation/pages/subpages/start/starList_Widget.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key key}) : super(key: key);
  static const String title = "Entedimento da planta";
  static const Color color = Colors.red;

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
              child: GraphWidget(
                asset: "assets/start/start.png",
              ),
            ),
            StartListWidget(
              screenWidth: constraints.maxWidth,
            ),
          ],
        );
      },
    );
  }
}
