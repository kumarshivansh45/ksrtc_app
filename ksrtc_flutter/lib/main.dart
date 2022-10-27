import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './screens/homepage.dart';
import './screens/login.dart';
import './screens/tickets.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // initialRoute: "/homepage",  $$$$ for now only
      routes: {
        "/": (context) => Login(),
        '/homepage': (context) => Homepage(),
        "/login": (context) => Login(),
        "/tickets": (context) => Tickets()
      },
    );
  }
}
