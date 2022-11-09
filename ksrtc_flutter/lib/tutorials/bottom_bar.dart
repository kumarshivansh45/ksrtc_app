// import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import "package:fluentui_icons/fluentui_icons.dart";
import 'package:ksrtc_flutter/tutorials/device_data.dart';
import '../tutorials/homescreen.dart';
import '../tutorials/track.dart';
import "../tutorials/widgets.dart";
import "../tutorials/styles.dart";
import "../tutorials/utils.dart";
import "../tutorials/drawer.dart";
import '../tutorials/device_data.dart';
import "../tutorials/popups.dart";
import "../tutorials/website.dart";

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
    Website(), //ebViewTestW
    DialogExample(), //Tracking()
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
              child: Text(
                "welcome ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.access_time_filled_outlined),
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
              subtitle: Column(children: [
                Row(children: [
                  ElevatedButton(onPressed: () {}, child: Text("Logout"))
                ])
              ]),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.yellow),
          // leading: Drawer(),
          actions: [
            Container(
              width: 50,
              margin: EdgeInsets.only(right: 10),
              child: InkWell(
                customBorder: CircleBorder(),
                child: Icon(
                  Icons.notifications,
                  color: Colors.yellow,
                ),
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
            InkWell(
              // onTap: () ,
              child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.yellow)),
                  margin: EdgeInsets.all(10),
                  height: kToolbarHeight - 15,
                  child: Image.asset(
                    "./resources/bird_yellow_new.png",
                  )),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                child: Text(
                  "Awatar 2.0",
                  style: Styles.headline1.copyWith(
                      color: Colors.yellow, fontWeight: FontWeight.bold),
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
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_news_regular),
                label: "articles"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_my_location_regular),
                label: "track"),
          ]),
    );
  }
}
