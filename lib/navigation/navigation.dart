import 'package:calorie_calculator_app/screens/home.dart';
import 'package:flutter/material.dart';

import '../screens/history.dart';
import '../screens/profile.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<StatefulWidget> createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation>{
  int _selectedIndex = 0;
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  void _onItemTapped(int index) {
    if(_selectedIndex == index){
      return;
    }
    switch (index) {
      case 0:
        _navigatorKey.currentState!.pushReplacementNamed("Home");
        break;
      case 1:
        _navigatorKey.currentState!.pushReplacementNamed("History");
        break;
      case 2:
        _navigatorKey.currentState!.pushReplacementNamed("Profile");
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "Home":
        return MaterialPageRoute(builder: (context) => Container(color: Colors.blue,child: const HomeScreen()));
      case "History":
        return MaterialPageRoute(builder: (context) => Container(color: Colors.blue,child: const HistoryScreen()));
      case "Profile":
        return MaterialPageRoute(builder: (context) => Container(color: Colors.green,child: const ProfileScreen()));
      default:
        return MaterialPageRoute(builder: (context) => Container(color: Colors.blue,child: const HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(key: _navigatorKey, onGenerateRoute: generateRoute),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

}