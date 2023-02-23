import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/authenticaion/screens/home/home_screen.dart';
import '../features/authenticaion/screens/login/login_screen.dart';
import '../features/authenticaion/screens/main_page/main_page.dart';
import '../features/authenticaion/screens/search/search.dart';
import '../features/authenticaion/screens/signup/signup_screen.dart';
import '../features/authenticaion/screens/splash/splash_screen.dart';
import '../features/authenticaion/screens/welcome/welcome_screen.dart';

class MyRoutes {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        routes: <GoRoute>[
          GoRoute(
              name: 'home',
              path: "home",
              builder: (BuildContext context, GoRouterState state) =>
                  const Home()),
          GoRoute(
              name: 'welcome',
              path: "welcome",
              builder: (BuildContext context, GoRouterState state) =>
                  const WelcomeScreen()),
          GoRoute(
              name: 'login',
              path: "login",
              builder: (BuildContext context, GoRouterState state) => const Login()),
                  // email: state.params["email"]!,
                  // password: state.params["password"]!)),
          GoRoute(
              name: 'signup',
              path: "signup",
              builder: (BuildContext context, GoRouterState state) =>
                  const SignUp()),
          GoRoute(
              name: 'search',
              path: "search",
              builder: (BuildContext context, GoRouterState state) =>
                  const Search()),
          GoRoute(
              name: 'main',
              path: "main",
              builder: (BuildContext context, GoRouterState state) =>
                  const MainPage()),
          // GoRoute(
          // name: 'wishlist',
          //     path: "wishlist",
          //     builder: (BuildContext context, GoRouterState state) =>
          //         const Wishlist()),
        ],
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen(),
      ),
    ],
  );
}
