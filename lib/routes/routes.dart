import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_plus/pages/favorites_page.dart';
import 'package:movies_plus/pages/landing_page.dart';
import 'package:movies_plus/pages/home_page.dart';
import 'package:movies_plus/pages/login_page.dart';
import 'package:movies_plus/pages/register_page.dart';
import 'package:movies_plus/pages/search_page.dart';
import 'package:movies_plus/pages/settings_page.dart';
import 'package:movies_plus/routes/app_routes.dart';
import 'package:movies_plus/components/shared/custom_bottom_navigator_bar.dart';

final router = GoRouter(
  initialLocation: AppRoutes.landing.path,
  routes: [
    GoRoute(
      path: AppRoutes.landing.path,
      builder: (context, state) => const LandingPage(),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          appBar: state.fullPath != AppRoutes.home.path
              ? AppBar(
                  title: Text((state.extra as List)[1]),
                  centerTitle: true,
                )
              : null,
          body: child,
          bottomNavigationBar: const CustomBottomNavigatorBar(),
        );
      },
      routes: [
        GoRoute(
          path: AppRoutes.login.path,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: AppRoutes.register.path,
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: AppRoutes.home.path,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: AppRoutes.search.path,
          builder: (context, state) => const SearchPage(),
        ),
        GoRoute(
          path: AppRoutes.favorites.path,
          builder: (context, state) => const FavoritesPage(),
        ),
        GoRoute(
          path: AppRoutes.settings.path,
          builder: (context, state) => const SettingsPage(),
        )
      ],
    )
  ],
);
