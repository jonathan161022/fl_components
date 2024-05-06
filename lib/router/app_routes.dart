import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const inicialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listView1',
        name: 'ListView1 Screen',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listView2',
        name: 'ListView2 Screen',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.warning),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_giftcard_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppsRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const ListView1Screen(),
  //   'listView2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
