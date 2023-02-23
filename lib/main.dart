// ignore_for_file: sized_box_for_whitespace

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/src/routing/my_routes.dart';
import 'package:my_app/src/utils/themes/theme.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routerDelegate: MyRoutes.router.routerDelegate,
      routeInformationParser: MyRoutes.router.routeInformationParser,
      routeInformationProvider: MyRoutes.router.routeInformationProvider,
    );
  }
}
