class AppRoute {
  final String name;
  final String path;

  const AppRoute({
    required this.name,
    required this.path,
  });
}

class AppRoutes {
  static const landing = AppRoute(name: 'Landing', path: '/landing');
  static const home = AppRoute(name: 'Home', path: '/');
  static const login = AppRoute(name: 'Login', path: '/login');
  static const register = AppRoute(name: 'Register', path: '/register');
  static const search = AppRoute(name: 'Search', path: '/search');
  static const favorites = AppRoute(name: 'Favorites', path: '/favorites');
  static const settings = AppRoute(name: 'Settings', path: '/settings');
}
