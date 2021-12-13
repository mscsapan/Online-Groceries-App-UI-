import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_groceries_app_ui/screen/account_screen.dart';
import 'package:online_groceries_app_ui/screen/favourite_screen.dart';
import 'package:online_groceries_app_ui/screen/home_screen.dart';

import 'cart_screen.dart';
import 'explore_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    const AccountScreen(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.red),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (bottomIndex) => setState(() {
            _currentIndex = bottomIndex;
          }),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          selectedLabelStyle: const TextStyle(color: Colors.green),
          items: const [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.store), label: 'Shop'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.searchPlus), label: 'Explore'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.shoppingCart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.heart), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
