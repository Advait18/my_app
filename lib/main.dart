// ignore_for_file: sized_box_for_whitespace

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/features/authenticaion/screens/home/home_screen.dart';
import 'package:my_app/src/features/authenticaion/screens/login/login_screen.dart';
import 'package:my_app/src/features/authenticaion/screens/main_page/main_page.dart';
import 'package:my_app/src/features/authenticaion/screens/search/search.dart';
import 'package:my_app/src/features/authenticaion/screens/signup/signup_screen.dart';
import 'package:my_app/src/features/authenticaion/screens/splash/splash_screen.dart';
import 'package:my_app/src/features/authenticaion/screens/welcome/welcome_screen.dart';
import 'package:my_app/src/utils/themes/theme.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  

  final GoRouter _router = GoRouter(routes: <GoRoute>[
    GoRoute(
      routes: <GoRoute>[
        GoRoute(
            path: "home",
            builder: (BuildContext context, GoRouterState state) =>
                const Home()),
        GoRoute(
            path: "welcome",
            builder: (BuildContext context, GoRouterState state) =>
                const WelcomeScreen()),
        GoRoute(
            path: "login",
            builder: (BuildContext context, GoRouterState state) =>
                const Login(email: ' ', password: ' ')),
        GoRoute(
            path: "signup",
            builder: (BuildContext context, GoRouterState state) =>
                const SignUp()),
        GoRoute(
            path: "search",
            builder: (BuildContext context, GoRouterState state) =>
                const Search()),
        GoRoute(
            path: "main",
            builder: (BuildContext context, GoRouterState state) =>
                const MainPage()),
        // GoRoute(
        //     path: "wishlist",
        //     builder: (BuildContext context, GoRouterState state) =>
        //         const Wishlist()),
      ],
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    )
  ]);

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalKey<NavigatorState>();
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      key: navigatorKey,
    );
  }
}
