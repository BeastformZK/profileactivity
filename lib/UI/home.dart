import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:profileactivity/UI/drawer.dart';
import 'package:profileactivity/widgets/appbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
        child: Builder(
      builder: (context) => Scaffold(
        /// remove const if the data is already inserted on NavigationDrawerPage
        drawer: const NavigationDrawerPage(),
        appBar: buildAppBar(context),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[700],
          onPressed: () {},
          child: const Icon(
            Icons.gamepad_sharp,
            color: Colors.white,
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5,
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Game Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.library_books), label: 'Game Library')
              ],
              currentIndex: currentIndex,
              onTap: (val) {
                setState(() {
                  currentIndex = val;
                });
              },
              backgroundColor: Colors.green[700],
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white),
        ),
      ),
    ));
  }
}
