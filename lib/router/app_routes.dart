import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
class AppRoutes {
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
        'home': (BuildContext context ) => const HomeScreen(),
        'listview1': (BuildContext context ) => const ListView1Screen(),
        'listview2': (BuildContext context ) => const ListView2Screen(),
        'alert': (BuildContext context ) => const AlertScreen(),
        'card': (BuildContext context ) => const CardScreen(),
      };
  
  static Route<dynamic> onGenerateRoute <RouteSettings> (settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
    );
  }
}