import 'package:flutter/material.dart';
import 'package:infoGraficAutomation/global_Widgets/graphWidget.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({Key key}) : super(key: key);
  static const String title = "Entedimento do problema";
  static const Color color = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return GraphWidget(asset: "assets/control/control.png");
  }
}
