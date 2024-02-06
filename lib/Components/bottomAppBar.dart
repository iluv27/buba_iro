import 'package:buba_iro/Categories/categories.dart';
import 'package:buba_iro/Home/home.dart';
import 'package:buba_iro/Profile/profile.dart';
import 'package:buba_iro/Shop/shop.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int selectedPage = 0;
  List<Widget> pages = const [
    HomeScreen(),
    CategoriesScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: pages[selectedPage],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedPage,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              onTap: (value) {
                setState(() {
                  selectedPage = value;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'Categories',
                  icon: Icon(Icons.list),
                ),
                BottomNavigationBarItem(
                  label: 'Shop',
                  icon: Icon(Icons.shopping_bag_outlined),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(Icons.account_circle_outlined),
                ),
              ])),
    );
  }
}
