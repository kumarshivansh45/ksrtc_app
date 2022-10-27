import 'package:flutter/material.dart';

import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awatar 2.0"),
        titleSpacing: 0,
        elevation: 2,
        leading: Image.asset(
          "./resources/bird_light.png",
        ),
        actions: [
          IconButton(
            onPressed: () {
              //do something
            },
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              //do something
            },
            icon: Icon(Icons.contact_support_sharp),
          ),
        ],
      ),
      body: Center(child: Text("homepage")),
      drawer: Drawer(),
    );
  }
}
