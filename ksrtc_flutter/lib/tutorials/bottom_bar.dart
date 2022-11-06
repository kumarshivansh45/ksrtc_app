// import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import "package:fluentui_icons/fluentui_icons.dart";
import '../tutorials/homescreen.dart';
import '../tutorials/track.dart';
import "../tutorials/widgets.dart";
import "../tutorials/styles.dart";
import "../tutorials/utils.dart";
import "../tutorials/drawer.dart";

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Homescreen(),
    Adcard(),
    Article(),
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
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
          actions: [
            Container(
              width: 50,
              margin: EdgeInsets.only(right: 10),
              child: InkWell(
                customBorder: CircleBorder(),
                child: Icon(Icons.notifications),
                onTap: () {
                  print("notification clicked");
                },
              ),
            )
          ],
          backgroundColor: Color.fromARGB(255, 119, 0, 0).withOpacity(0.9),
          shadowColor: Colors.yellowAccent,
          toolbarHeight: 70,
          title: Container(
              child: Row(children: [
            Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                margin: EdgeInsets.all(10),
                height: kToolbarHeight - 15,
                child: Image.asset(
                  "./resources/bird_light.png",
                )),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                child: Text(
                  "Awatar 2.0",
                  style: Styles.headline1.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text("~Beta",
                    textAlign: TextAlign.left,
                    style: Styles.headline3.copyWith(
                        color: Colors.grey, fontStyle: FontStyle.italic)),
              )
            ])
          ]))),
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
