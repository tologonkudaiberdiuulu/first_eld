import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:home_page/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    const titlePaddingWidget = SizedBox(height: 6);
    const double iconSelectedHeight = 21;
    const double iconUnselectedHeight = 19;
    const double iconSelectedWidth = 21;
    const double iconUnselectedWidth = 19;
    const Color selectedItemColor = Colors.white;
    const Color unSelectedItemColor = Colors.grey;

    final pages = [
      const HomePage(),
      Center(
        child: Text(
          "Page: ${_index + 1}",
          style: const TextStyle(
            fontSize: 52,
          ),
        ),
      ),
      Center(
        child: Text(
          "Page: ${_index + 1}",
          style: const TextStyle(
            fontSize: 52,
          ),
        ),
      ),
      Center(
        child: Text(
          "Page: ${_index + 1}",
          style: const TextStyle(
            fontSize: 52,
          ),
        ),
      ),
    ];

    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: FloatingNavbar(
        selectedBackgroundColor: Colors.transparent,
        borderRadius: 80,
        iconSize: 21,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unSelectedItemColor,
        backgroundColor: const Color(0xFF1C293E),
        onTap: (int val) => setState(() => _index = val),
        currentIndex: _index,
        items: [
          FloatingNavbarItem(
            // title: 'Home',
            customWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/home.png',
                  color: _index == 0 ? selectedItemColor : unSelectedItemColor,
                  height:
                      _index == 0 ? iconSelectedHeight : iconUnselectedHeight,
                  width: _index == 0 ? iconSelectedWidth : iconUnselectedWidth,
                ),
                titlePaddingWidget,
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 12,
                    height: 14.32 / 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gilroy',
                    color:
                        _index == 0 ? selectedItemColor : unSelectedItemColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            // title: 'Logbook',
            customWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/logbook.png',
                  color: _index == 1 ? selectedItemColor : unSelectedItemColor,
                  height:
                      _index == 1 ? iconSelectedHeight : iconUnselectedHeight,
                  width: _index == 1 ? iconSelectedWidth : iconUnselectedWidth,
                ),
                titlePaddingWidget,
                Text(
                  'Logbook',
                  style: TextStyle(
                    fontSize: 12,
                    height: 14.32 / 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gilroy',
                    color:
                        _index == 1 ? selectedItemColor : unSelectedItemColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            // title: 'Inspection',
            customWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/inspection.png',
                  color: _index == 2 ? selectedItemColor : unSelectedItemColor,
                  height:
                      _index == 2 ? iconSelectedHeight : iconUnselectedHeight,
                  width: _index == 2 ? iconSelectedWidth : iconUnselectedWidth,
                ),
                titlePaddingWidget,
                Text(
                  'Inspection',
                  style: TextStyle(
                    fontSize: 12,
                    height: 14.32 / 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gilroy',
                    color:
                        _index == 2 ? selectedItemColor : unSelectedItemColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            // title: 'More',
            customWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/category.png',
                  color: _index == 3 ? selectedItemColor : unSelectedItemColor,
                  height:
                      _index == 3 ? iconSelectedHeight : iconUnselectedHeight,
                  width: _index == 3 ? iconSelectedWidth : iconUnselectedWidth,
                ),
                titlePaddingWidget,
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 12,
                    height: 14.32 / 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Gilroy',
                    color:
                        _index == 3 ? selectedItemColor : unSelectedItemColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
