import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/provider/AppThemeNotifier.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/SplashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          AppThemeNotifier notifie = Provider.of<AppThemeNotifier>(context,listen: false);
          if(notifie.themeMode() == 1){
            notifie.updateTheme(2);
          } else {
            notifie.updateTheme(1);
          }
        },
      ),
      body:  Center(child: Text("Splash")),
    );
  }
}
