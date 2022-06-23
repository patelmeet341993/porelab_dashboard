import 'package:flutter/material.dart';
import 'package:flutter_app/views/home_screen/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'configs/AppTheme.dart';
import 'configs/my_print.dart';
import 'controllers/navigation_controller.dart';
import 'controllers/provider/AppThemeNotifier.dart';

void main() async {
  //You will need to initialize AppThemeNotifier class for theme changes.
        runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    MyPrint.printOnConsole("MyApp called");
    // MySize().init(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppThemeNotifier>(create: (_) => AppThemeNotifier(),),
      ],
      child: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  static late BuildContext mainContext;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MainApp.mainContext = context;
    MyPrint.printOnConsole("Main called");
    return Consumer<AppThemeNotifier>(
      builder: (BuildContext context, AppThemeNotifier value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.getThemeFromThemeMode(value.themeMode()),
          onGenerateRoute: NavigationController().getMainGeneratedRoutes,
          home: HomeScreen(),
        );
      },
    );
  }
}