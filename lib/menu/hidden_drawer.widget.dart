import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:myacademy_trainer/main.dart';
import 'package:myacademy_trainer/pages/home.page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.blueGrey.shade700);
  final mySelectedTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Color(0xff7058BA),
  );

  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: Color(0xff7058BA),
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'My Profile',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: Color(0xff7058BA),
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Students List',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: Color(0xff7058BA),
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Calendar',
          baseStyle: myTextStyle,
          selectedStyle: mySelectedTextStyle,
          colorLineSelected: Color(0xff7058BA),
        ),
        const HomePage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color(0xffD6D2FF),
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 40,
      withAutoTittleName: false,
      // backgroundColorAppBar: const Color(0xFFF7CBCB),
      backgroundColorAppBar: Color(0xffD6D2FF),
    );
  }
}
