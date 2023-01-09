import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/model/models.dart';
class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
   // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'List View 1', screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'List View 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.alarm),
    MenuOption(route: 'card', name: 'Cards', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_fill_outlined),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_outlined),
    MenuOption(route: 'slider', name: 'Slider and Checks', screen: const SliderScreen(), icon: Icons.slideshow),
    MenuOption(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes () {

  Map<String, Widget Function(BuildContext)> appRoutes = {};
  appRoutes.addAll({'home': (BuildContext context ) => const HomeScreen()});

  for (final option in menuOption) {
    appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
  }

    return appRoutes;
  }
/*
  static Map<String, Widget Function(BuildContext)> routes = {
        'home': (BuildContext context ) => const HomeScreen(),
        'listview1': (BuildContext context ) => const ListView1Screen(),
        'listview2': (BuildContext context ) => const ListView2Screen(),
        'alert': (BuildContext context ) => const AlertScreen(),
        'card': (BuildContext context ) => const CardScreen(),
      };*/
  
  static Route<dynamic> onGenerateRoute <RouteSettings> (settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
    );
  }
}