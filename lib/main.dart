import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infoGraficAutomation/route/nav.dart';
import 'package:infoGraficAutomation/route/routes.dart';

void main() => runApp(GetMaterialApp(
      initialRoute: Routes.HOME,
      getPages: Nav.routes,
    ));
