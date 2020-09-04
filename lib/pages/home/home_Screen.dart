import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infoGraficAutomation/controller/home_Controller.dart';
import 'package:infoGraficAutomation/pages/home/widgets/statusPageWidget/statusPage_Widget.dart';
import 'package:infoGraficAutomation/pages/home/widgets/title_Widget.dart';
import 'package:infoGraficAutomation/pages/subpages/Info/info_Page.dart';
import 'package:infoGraficAutomation/pages/subpages/start/startPage.dart';
import 'package:infoGraficAutomation/pages/subpages/when/whenPage.dart';
import 'package:infoGraficAutomation/theme/animation_Duration.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Stack(children: [
            AnimatedContainer(
              duration: AnimationDuration.transitionDuration,
              color: HomeController.to.backgroundColor,
              child: PageView(
                children: [WhenPage(), StartPage(), InfoPage()],
                scrollDirection: Axis.vertical,
                onPageChanged: HomeController.to.updateCurrentPage,
                controller: HomeController.to.pageController,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: StatusPageWidget(),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TitleWidget(),
                )),
          ])),
    );
  }
}
