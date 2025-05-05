import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_plus/routes/app_routes.dart';

class CustomBottomNavigatorBar extends StatefulWidget {
  const CustomBottomNavigatorBar({
    super.key,
  });

  @override
  State<CustomBottomNavigatorBar> createState() =>
      _CustomBottomNavigatorBarState();
}

class _CustomBottomNavigatorBarState extends State<CustomBottomNavigatorBar> {
  int index = 0;

  final routes = [
    AppRoutes.home,
    AppRoutes.search,
    AppRoutes.favorites,
    AppRoutes.settings,
  ];

  void changePage(int index) {
    final route = routes[index];
    if (context.mounted) {
      context.go(route.path, extra: [index, route.name]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.white,
      selectedItemColor: const Color(0xff32A873),
      currentIndex: index,
      onTap: (value) {
        setState(() {
          index = value;
        });
        changePage(value);
      },
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: 'Favorites',
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          label: 'Settings',
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}
