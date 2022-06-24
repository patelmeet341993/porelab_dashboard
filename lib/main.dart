import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/home_screen/screens/home_screen.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

import 'configs/AppTheme.dart';
import 'configs/my_print.dart';
import 'controllers/navigation_controller.dart';
import 'controllers/provider/AppThemeNotifier.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyB2VIFancUpmnNcye0sjSe8NafvuhWDJUo", // Your apiKey
      appId: "1:8401688697:web:e367aad7fd7cd518235ca8", // Your appId
      messagingSenderId: "8401688697", // Your messagingSenderId
      projectId: "nyiapp-3a612", // Your projectId
    ),
  );
  //You will need to initialize AppThemeNotifier class for theme changes.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    MyPrint.printOnConsole("MyApp called");

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
        return NeumorphicApp(
          darkTheme: AppTheme.neumorphicDarkTheme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: NavigationController().getMainGeneratedRoutes,
          theme: AppTheme.getThemeFromNeumorphicThemeMode(value.themeMode()),
          home: HomeScreen(),
        );
      },
    );
  }
}