// import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import "package:fluentui_icons/fluentui_icons.dart";
import '../tutorials/homescreen.dart';
import '../tutorials/track.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Homescreen(),
    const Text("Tickets"),
    const Text("Settings"),
    Track(),
  ];

  void set_index(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          elevation: 3,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: set_index,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_settings_filled),
                label: "settings"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_my_location_filled),
                label: "track"),
          ]),
    );
  }
}
