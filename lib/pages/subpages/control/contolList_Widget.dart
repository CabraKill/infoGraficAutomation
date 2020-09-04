import 'package:flutter/material.dart';
import 'package:infoGraficAutomation/global_Widgets/graphInfo_Widget.dart';
import 'package:infoGraficAutomation/global_Widgets/infoList_Item.dart';
import 'package:infoGraficAutomation/global_Widgets/myChip_Widget.dart';

class ControlListWidget extends StatelessWidget {
  final double screenWidth;
  const ControlListWidget({@required this.screenWidth, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphInfoPage(children: [
      InfoListItem(title: "Problemas", screenWidth: screenWidth, children: [
        MyChip(text: TextList.problem1),
        MyChip(text: TextList.problem2),
      ]),
      InfoListItem(
          title: "Pontapés e Soluções",
          screenWidth: screenWidth,
          children: [
            MyChip(text: TextList.solution1),
            MyChip(text: TextList.solution2)
          ])
    ]);
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: ListView(children: [
        InfoListItem(title: "Problemas", screenWidth: screenWidth, children: [
          MyChip(text: TextList.problem1),
          MyChip(text: TextList.problem2),
        ]),
        InfoListItem(
            title: "Pontapés e Soluções",
            screenWidth: screenWidth,
            children: [
              MyChip(text: TextList.solution1),
              MyChip(text: TextList.solution2)
            ]),
      ]),
    );
  }
}

class TextList {
  static const problem1 =
      "Para acompanhar o nível de estabilidade desejada na variável controlada é necessário uma alta taxa de processamento. Quem ou o que fará isso ?";
  static const problem2 =
      "Que tipo sistema eu tenho e qual método é suficiente para atingir o meu nível de qualidade esperado ?";

  static const solution1 =
      "Ao mesmo tempo que as ideia de controle surgiam, o hardware se tornava mais rápido com a eletrônica digital e a organização de computadores de Von Neumann. As coisas entram na fase das centenas ou milhares de bits por segundo.";
  static const solution2 =
      "Para aproveitar destas inovações e solucionar o controle automático do processo entrou o CLP(Computador Lógico Programável), posteriormente o Controle Supervisório é adicionado para o operador atuar e supervisionar de longe numa sala sala segura de controle.";
}
