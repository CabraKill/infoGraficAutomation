import 'package:clipboard/clipboard.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key key}) : super(key: key);

  static const Color color = Colors.black;
  static const String title = "Quem eu sou?";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -0.8),
              child: SizedBox(
                width: 290,
                child: Text(
                  '"Olá, eu sou Raphael! Atualmente no 8 período de Engenharia Mecatrônica(Unit/Se) e Técnico em Automação Industrial. Apaixonado por tecnologia que soluciona problemas(Ou só que é muito legal de ver)."',
                  style: _textStyle,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 15, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "assets/eu.jpg",
                  width: 300,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () =>
                        FlutterClipboard.copy('raphaeldesouza@outlook.com')
                            .then((value) => Get.snackbar(
                                "Hamsters rodando...", "Email copiado",
                                backgroundColor: Colors.white60)),
                    child: Text(
                      "raphaeldesouza@outlook.com",
                      style: _textStyle.apply(
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "gitHub: ",
                          style: TextStyle(color: Colors.white)),
                      TextSpan(
                        text: 'https://github.com/CabraKill',
                        style: new TextStyle(color: Colors.blue),
                        recognizer: new TapGestureRecognizer()
                          ..onTap =
                              () => _launchURL('https://github.com/CabraKill'),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/creative-commons.png"),
                  IconButton(
                    tooltip: "Informações e licensas.",
                    icon: Icon(
                      Icons.info,
                      color: Colors.cyan,
                    ),
                    onPressed: () => showAboutDialog(
                        context: context,
                        applicationIcon: Icon(Icons.info),
                        applicationName: "InfoGraphControl",
                        applicationVersion: "1.0",
                        applicationLegalese:
                            "Este trabalho está licenciado com uma Licença Creative Commons - Atribuição 4.0 Internacional.",
                        children: [
                          Text(
                              "Contribuição em InfoGráfico na área de Controle.")
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

TextStyle _textStyle = TextStyle(color: Colors.cyan);

_launchURL(String link) async {
  final url = link;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    Get.snackbar(
        "Erro na geração de quarks", "Não foi possível abrir a página.");
  }
}
