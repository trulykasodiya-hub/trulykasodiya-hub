import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trushitkasodiya/constances.dart';
import 'MyHomePage/my_homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData.light().copyWith(
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 75.0, fontWeight: FontWeight.bold,color: Colors.black),
          headline5: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.black),
          headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500,color: Colors.black),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      dark: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBgColor,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold,color: Colors.white),
          headline5: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500,color: Colors.white),
          headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500,color: Colors.white),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Trushit Kasodiya',
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(title: 'Trushit Kasodiya'),
      ),
    );
  }
}











