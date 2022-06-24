/*
* File : App Theme
* Version : 1.0.0
* */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AppTheme {
  static final int themeLight = 1;
  static final int themeDark = 2;

  AppTheme._();

  static CustomAppTheme getCustomAppTheme(int themeMode) {
    if (themeMode == themeLight) {
      return lightCustomAppTheme;
    } else if (themeMode == themeDark) {
      return darkCustomAppTheme;
    }
    return darkCustomAppTheme;
  }

  static FontWeight _getFontWeight(int weight) {
    switch (weight) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w300;
      case 500:
        return FontWeight.w400;
      case 600:
        return FontWeight.w500;
      case 700:
        return FontWeight.w600;
      case 800:
        return FontWeight.w700;
      case 900:
        return FontWeight.w900;
    }
    return FontWeight.w400;
  }

  /*static TextStyle getTextStyle(TextStyle textStyle,
      {int fontWeight = 500,
        bool muted = false,
        bool xMuted =false,
        double letterSpacing = 0.15,
        Color? color,
        TextDecoration decoration = TextDecoration.none,
        double? height,
        double wordSpacing = 0,
        double? fontSize,
      }) {
    double finalFontSize = (fontSize != null ? fontSize : textStyle.fontSize) ?? 10;

    Color finalColor;
    if(color==null) {
      finalColor= (xMuted ? textStyle.color?.withAlpha(160) : (muted ? textStyle.color?.withAlpha(200) : textStyle.color)) ?? Colors.blue;
    }
    else {
      finalColor = xMuted ? color.withAlpha(160) : ( muted ? color.withAlpha(200) : color);
    }


    return GoogleFonts.ibmPlexSans(
        fontSize: finalFontSize,
        fontWeight: _getFontWeight(fontWeight),
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }*/

  //App Bar Text
  static final TextTheme lightAppBarTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 102, color: Color(0xff495057)),
    headline2: TextStyle(fontSize: 64, color: Color(0xff495057)),
    headline3:  TextStyle(fontSize: 51, color: Color(0xff495057)),
    headline4:  TextStyle(fontSize: 36, color: Color(0xff495057)),
    headline5:  TextStyle(fontSize: 25, color: Color(0xff495057)),
    headline6:  TextStyle(fontSize: 18, color: Color(0xff495057)),
    subtitle1:  TextStyle(fontSize: 17, color: Color(0xff495057)),
    subtitle2:  TextStyle(fontSize: 15, color: Color(0xff495057)),
    bodyText1:  TextStyle(fontSize: 16, color: Color(0xff495057)),
    bodyText2:  TextStyle(fontSize: 14, color: Color(0xff495057)),
    button:  TextStyle(fontSize: 15, color: Color(0xff495057)),
    caption:  TextStyle(fontSize: 13, color: Color(0xff495057)),
    overline:  TextStyle(fontSize: 11, color: Color(0xff495057)),
  );

  static final TextTheme darkAppBarTextTheme = TextTheme(
    headline1:  TextStyle(fontSize: 102, color: Color(0xffffffff)),
    headline2:  TextStyle(fontSize: 64, color: Color(0xffffffff)),
    headline3:  TextStyle(fontSize: 51, color: Color(0xffffffff)),
    headline4:  TextStyle(fontSize: 36, color: Color(0xffffffff)),
    headline5:  TextStyle(fontSize: 25, color: Color(0xffffffff)),
    headline6:  TextStyle(fontSize: 20, color: Color(0xffffffff)),
    subtitle1:  TextStyle(fontSize: 17, color: Color(0xffffffff)),
    subtitle2:  TextStyle(fontSize: 15, color: Color(0xffffffff)),
    bodyText1:  TextStyle(fontSize: 16, color: Color(0xffffffff)),
    bodyText2:  TextStyle(fontSize: 14, color: Color(0xffffffff)),
    button:  TextStyle(fontSize: 15, color: Color(0xffffffff)),
    caption:  TextStyle(fontSize: 13, color: Color(0xffffffff)),
    overline:  TextStyle(fontSize: 11, color: Color(0xffffffff)),
  );

  //Text Themes
  static final TextTheme lightTextTheme = TextTheme(
    headline1:  TextStyle(fontSize: 102, color: Color(0xff4a4c4f)),
    headline2:  TextStyle(fontSize: 64, color: Color(0xff4a4c4f)),
    headline3:  TextStyle(fontSize: 51, color: Color(0xff4a4c4f)),
    headline4:  TextStyle(fontSize: 36, color: Color(0xff4a4c4f)),
    headline5:  TextStyle(fontSize: 25, color: Color(0xff4a4c4f)),
    headline6:  TextStyle(fontSize: 18, color: Color(0xff4a4c4f)),
    subtitle1:  TextStyle(fontSize: 17, color: Color(0xff4a4c4f)),
    subtitle2:  TextStyle(fontSize: 15, color: Color(0xff4a4c4f)),
    bodyText1:  TextStyle(fontSize: 16, color: Color(0xff4a4c4f)),
    bodyText2:  TextStyle(fontSize: 14, color: Color(0xff4a4c4f)),
    button:  TextStyle(fontSize: 15, color: Color(0xff4a4c4f)),
    caption:  TextStyle(fontSize: 13, color: Color(0xff4a4c4f)),
    overline:  TextStyle(fontSize: 11, color: Color(0xff4a4c4f)),
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline1:  TextStyle(fontSize: 102, color: Colors.white),
    headline2:  TextStyle(fontSize: 64, color: Colors.white),
    headline3:  TextStyle(fontSize: 51, color: Colors.white),
    headline4:  TextStyle(fontSize: 36, color: Colors.white),
    headline5:  TextStyle(fontSize: 25, color: Colors.white),
    headline6:  TextStyle(fontSize: 18, color: Colors.white),
    subtitle1:  TextStyle(fontSize: 17, color: Colors.white),
    subtitle2:  TextStyle(fontSize: 15, color: Colors.white),
    bodyText1:  TextStyle(fontSize: 16, color: Colors.white),
    bodyText2:  TextStyle(fontSize: 14, color: Colors.white),
    button:  TextStyle(fontSize: 15, color: Colors.white),
    caption:  TextStyle(fontSize: 13, color: Colors.white),
    overline:  TextStyle(fontSize: 11, color: Colors.white),
  );

  //Color Themes
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    canvasColor: Colors.transparent,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Color(0xffffffff),
    appBarTheme: AppBarTheme(
      textTheme: lightAppBarTextTheme,
      actionsIconTheme: IconThemeData(
        color: Color(0xff495057),
      ),
      color: Color(0xffffffff),
      iconTheme: IconThemeData(color: Color(0xff495057), size: 24),
    ),
    navigationRailTheme: NavigationRailThemeData(
        selectedIconTheme:
        IconThemeData(color: Colors.blue, opacity: 1, size: 24),
        unselectedIconTheme:
        IconThemeData(color: Color(0xff495057), opacity: 1, size: 24),
        backgroundColor: Color(0xffffffff),
        elevation: 3,
        selectedLabelTextStyle: TextStyle(color: Colors.blue),
        unselectedLabelTextStyle: TextStyle(color: Color(0xff495057))),
    colorScheme: ColorScheme.light(
        primary: Colors.blue,
        onPrimary: Colors.white,
        primaryVariant: Colors.blue.shade400,
        secondary: Colors.blueAccent,
        secondaryVariant: Colors.blueAccent.shade400,
        onSecondary: Colors.white,
        surface: Color(0xffe2e7f1),
        background: Color(0xfff3f4f7),
        onBackground: Color(0xff495057)),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.4),
      elevation: 1,
      margin: EdgeInsets.all(0),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(fontSize: 15, color: Color(0xaa495057)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Colors.blue),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Colors.black54),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.black54)),
    ),
    splashColor: Colors.white.withAlpha(100),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: lightTextTheme,
    indicatorColor: Colors.white,
    disabledColor: Color(0xffdcc7ff),
    highlightColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.blue,
        splashColor: Colors.white.withAlpha(100),
        highlightElevation: 8,
        elevation: 4,
        focusColor: Colors.blue,
        hoverColor: Colors.blue,
        foregroundColor: Colors.white),
    dividerColor: Color(0xffd1d1d1),
    errorColor: Color(0xfff0323c),
    cardColor: Colors.white,
    accentColor: Colors.blue,
    popupMenuTheme: PopupMenuThemeData(
      color: Color(0xffffffff),
      textStyle: lightTextTheme.bodyText2?.merge(TextStyle(color: Color(0xff495057))),
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: Color(0xffffffff), elevation: 2),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Color(0xff495057),
      labelColor: Colors.blue,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Colors.blue, width: 2.0),
      ),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.blue,
      inactiveTrackColor: Colors.blue.withAlpha(140),
      trackShape: RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: Colors.blue,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red[100],
      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      canvasColor: Colors.transparent,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Color(0xff464c52),
      backgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        textTheme: darkAppBarTextTheme,
        actionsIconTheme: IconThemeData(
          color: Color(0xffffffff),
        ),
        color: Color(0xff2e343b),
        iconTheme: IconThemeData(color: Color(0xffffffff), size: 24),
      ),
      colorScheme: ColorScheme.dark(
        primary: Color(0xff10bbf0),
        primaryVariant: Colors.blue.shade400,
        secondary: Colors.blueAccent,
        secondaryVariant: Colors.blueAccent.shade400,
        background: Colors.black,
        onPrimary: Colors.white,
        onBackground: Colors.white,
        onSecondary: Colors.white,
        surface: Color(0xff585e63),
      ),
      cardTheme: CardTheme(
        color: Color(0xff37404a),
        shadowColor: Color(0xff000000),
        elevation: 1,
        margin: EdgeInsets.all(0),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      textTheme: darkTextTheme,
      indicatorColor: Colors.white,
      disabledColor: Color(0xffa3a3a3),
      highlightColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xff10bbf0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.white70),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.white70)),
      ),
      dividerColor: Color(0xffd1d1d1),
      errorColor: Colors.orange,
      cardColor: Color(0xff282a2b),
      splashColor: Colors.white.withAlpha(100),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
          splashColor: Colors.white.withAlpha(100),
          highlightElevation: 8,
          elevation: 4,
          focusColor: Colors.blue,
          hoverColor: Colors.blue,
          foregroundColor: Colors.white),
      accentColor: Colors.blue,
      popupMenuTheme: PopupMenuThemeData(
        color: Color(0xff37404a),
        textStyle: lightTextTheme.bodyText2?.merge(TextStyle(color: Color(0xffffffff))),
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff292929), elevation: 2),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Color(0xff495057),
        labelColor: Color(0xff10bbf0),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: Color(0xff10bbf0), width: 2.0),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: Color(0xff10bbf0),
        inactiveTrackColor: Colors.blue.withAlpha(100),
        trackShape: RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbColor: Color(0xff10bbf0),
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
        tickMarkShape: RoundSliderTickMarkShape(),
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      cupertinoOverrideTheme: CupertinoThemeData());

  static final NeumorphicThemeData neumorphicLightTheme = NeumorphicThemeData(
    baseColor: Color(0xFFFFFFFF),
    lightSource: LightSource.topLeft,
    depth: 10,

  );

  static NeumorphicThemeData neumorphicDarkTheme = NeumorphicThemeData(
    baseColor: Color(0xFF3E3E3E),
    lightSource: LightSource.topLeft,
    depth: 6,
  );

  static ThemeData getThemeFromThemeMode(int themeMode) {
    if (themeMode == themeLight) {
      return lightTheme;
    } else if (themeMode == themeDark) {
      return darkTheme;
    }
    return darkTheme;
  }

  static NeumorphicThemeData getThemeFromNeumorphicThemeMode(int themeMode) {
    if (themeMode == themeLight) {
      return neumorphicLightTheme;
    } else if (themeMode == themeDark) {
      return neumorphicDarkTheme;
    }
    return neumorphicDarkTheme;
  }

  static NavigationBarTheme getNavigationThemeFromMode(int themeMode) {
    print(themeMode);
    NavigationBarTheme navigationBarTheme = NavigationBarTheme();
    if (themeMode == themeLight) {
      navigationBarTheme.backgroundColor = Colors.white;
      navigationBarTheme.selectedItemColor = Color(0xff10bbf0);
      navigationBarTheme.unselectedItemColor = Color(0xff495057);
      navigationBarTheme.selectedOverlayColor = Color(0x383d63ff);
    }
    else if (themeMode == themeDark) {
      navigationBarTheme.backgroundColor = Color(0xff37404a);
      navigationBarTheme.selectedItemColor = Color(0xff37404a);
      navigationBarTheme.unselectedItemColor = Color(0xffd1d1d1);
      navigationBarTheme.selectedOverlayColor = Color(0xffffffff);
    }
    return navigationBarTheme;
  }

  static final CustomAppTheme lightCustomAppTheme = CustomAppTheme(
    bgLayer1: Color(0xffffffff),
    bgLayer2: Color(0xfff9f9f9),
    bgLayer3: Color(0xffe8ecf4),
    bgLayer4: Color(0xffdcdee3),


    disabledColor: Color(0xff636363),
    onDisabled: Color(0xffffffff),
    colorInfo: Color(0xffff784b),
    colorWarning: Color(0xffffc837),
    colorSuccess: Color(0xff3cd278),
    shadowColor: Color(0xffeaeaea),
    onInfo: Color(0xffffffff),
    onSuccess: Color(0xffffffff),
    onWarning: Color(0xffffffff),
    colorError: Color(0xfff0323c),
    onError: Color(0xffffffff),);
  static final CustomAppTheme darkCustomAppTheme = CustomAppTheme(
      bgLayer1: Color(0xff212429),
      bgLayer2: Color(0xff282930),
      bgLayer3: Color(0xff303138),
      bgLayer4: Color(0xff383942),
      disabledColor: Color(0xffbababa),
      onDisabled: Color(0xff000000),
      colorInfo: Color(0xffff784b),
      colorWarning: Color(0xffffc837),
      colorSuccess: Color(0xff3cd278),
      shadowColor: Color(0xff1a1a1a),
      onInfo: Color(0xffffffff),
      onSuccess: Color(0xffffffff),
      onWarning: Color(0xffffffff),
      colorError: Color(0xfff0323c),
      onError: Color(0xffffffff));
}

class CustomAppTheme {
  final Color bgLayer1,
      bgLayer2,
      bgLayer3,
      bgLayer4,
      disabledColor,
      onDisabled,
      colorInfo,
      colorWarning,
      colorSuccess,
      colorError,
      shadowColor,
      onInfo,
      onWarning,
      onSuccess,
      onError;

  CustomAppTheme({
    this.bgLayer1 = const Color(0xffffffff),
    this.bgLayer2 = const Color(0xfff8faff),
    this.bgLayer3 = const Color(0xffeef2fa),
    this.bgLayer4 = const Color(0xffdcdee3),
    this.disabledColor = const Color(0xffdcc7ff),
    this.onDisabled = const Color(0xffffffff),
    this.colorWarning = const Color(0xffffc837),
    this.colorInfo = const Color(0xffff784b),
    this.colorSuccess = const Color(0xff3cd278),
    this.shadowColor = const Color(0xff1f1f1f),
    this.onInfo = const Color(0xffffffff),
    this.onWarning = const Color(0xffffffff),
    this.onSuccess = const Color(0xffffffff),
    this.colorError = const Color(0xfff0323c),
    this.onError = const Color(0xffffffff),
  });
}

class NavigationBarTheme {
  Color? backgroundColor,
      selectedItemIconColor,
      selectedItemTextColor,
      selectedItemColor,
      selectedOverlayColor,
      unselectedItemIconColor,
      unselectedItemTextColor,
      unselectedItemColor;
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}