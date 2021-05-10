import 'package:flutter/material.dart';
import 'package:matger/screens/select_lang_screen/select_language_screen.dart';
import 'package:matger/shared/app_colors.dart';
import 'package:matger/shared/app_dependency_injection.dart';
import 'package:matger/shared/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await singletonsInitialization();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: ThemeData(
        fontFamily: kDefaultFontFamily,
        primarySwatch: kDefaultColor,
        scaffoldBackgroundColor: kDefaultBackgroundColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SelectLanguageScreen();
}
