// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_app/src/features/authenticaion/screens/welcome/welcome_screen.dart';
import 'package:my_app/src/utils/colors.dart';
import 'package:my_app/src/utils/themes/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        home: const Scaffold(
          backgroundColor: MyColors.black,
          body: WelcomeScreen()),
    );
  }
}
