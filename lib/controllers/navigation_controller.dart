import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/home_screen/screens/home_screen.dart';

import '../configs/my_print.dart';
import '../views/splash_screen/screens/splashScreen.dart';

class NavigationController {
  static final GlobalKey<NavigatorState> mainScreenNavigator = GlobalKey<NavigatorState>();
  static GlobalKey<ScaffoldState> homeScreenNavigator = GlobalKey<ScaffoldState>();

  Route? getMainGeneratedRoutes(RouteSettings settings) {
    MyPrint.printOnConsole("Main Generated Routes Called For:${settings.name} with argument:${settings.arguments}");

    Widget? widget;

    switch (settings.name) {
      case "/" : {
        widget = SplashScreen();
        break;
      }
      case SplashScreen.routeName:{
        widget = SplashScreen();
        break;
      }

      case HomeScreen.routeName:{
        widget = HomeScreen();
        break;
      }
    }

    if(widget != null) {
      return CupertinoPageRoute(builder: (BuildContext context) {
        return widget!;
      }, settings: settings);
    }
  }
}