import 'package:flutter/material.dart';
import 'package:infoGraficAutomation/global_Widgets/infoList_Item.dart';
import 'package:infoGraficAutomation/global_Widgets/myChip_Widget.dart';

class StartListWidget extends StatelessWidget {
  const StartListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: ListView(children: [
        InfoListItem(title: "Problemas", children: [
          MyChip(text: TextList.problem1),
          MyChip(text: TextList.problem2),
        ]),
        InfoListItem(title: "Pontapés", children: [
          MyChip(text: TextList.solution1),
          MyChip(text: TextList.solution2)
        ]),
      ]),
    );
  }
}

class TextList {
  static const problem1 =
      "Com o começo dos processos de produção durante a primeira e segunda revolução industrial foi percebida a quantidade de variáreis e dados ao redor dos processos industrias. Além desta enorme quantidade era necessário utilizá-los em prol do produto final.";
  static const problem2 =
      " Por mais que a matemática e os processos estejam recebendo soluções, seja no âmbito do hardware, software ou ainda as boas práticas de execução, ainda era muito incerto sobre como controlar o processo.";

  static const solution1 =
      "Para lidar com toda essa quantidade de informação a modelagem dos processos através de plantas industriais, fluxogramas e ainda as equações que regem o comportamento do sistema foram finalmente lapidadas e consolidadas como práticas em prol do controle do sistema.";
  static const solution2 =
      "Daqui para frente as preocupações com o controle das varáveis, já então conceituadas, medida e manipulada, apareceu como solulção para prever e instruir o processo de produção com precisão e segurança, por mais que ainda seja confuso como avaliar os métodos";
}
