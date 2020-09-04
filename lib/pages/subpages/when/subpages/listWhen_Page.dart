import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:infoGraficAutomation/global_Widgets/myChip_Widget.dart';

class ListWhenPage extends StatelessWidget {
  const ListWhenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: ListView(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Problemas",
                  style: TextStyle(fontSize: 25),
                ),
                Wrap(
                  runSpacing: 5,
                  spacing: 10,
                  children: [
                    MyChip(text: TextList.problem1),
                    Image.asset(
                      "assets/when/moinho.PNG",
                    ),
                    MyChip(text: TextList.problem2),
                    Image.asset(
                      "assets/when/trabalho.jpg",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Pontapés",
                  style: TextStyle(fontSize: 25),
                ),
                Wrap(
                  runSpacing: 5,
                  spacing: 10,
                  children: [
                    MyChip(text: TextList.solution1),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextList {
  static const String problem1 =
      "Cada vez mais era difícil alimentar a população das cidades. As crianças nasciam, as plantações e fazendas perdiam espaço ou não cresciam junto. As estações do ano podiam dificultar mais ainda a sobrevivência sem um estoque. Não era mais possível produzir pouco.";
  static const String problem2 =
      "Após o engajamento de métodos mecânicos na solução de problemas, estes de tornaram cada vez mais complexos e perigosos. Por mais que os direitos trabalhistas não existissem, como fazer para ter trabalhadores vivos e sadíos para as fábricas ?";
  static const String solution1 =
      "Foi tida a ideia de um moinho para agilizar a produção. Porém como manter algo funcionando o tempo todo através do trabalho braçal ?";
}
