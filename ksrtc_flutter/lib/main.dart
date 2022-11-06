// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import './screens/homepage.dart';
// import './screens/login.dart';
// import './screens/tickets.dart';

// void main() {
//   runApp(myApp());
// }

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: true, // $$$ for now only
//       themeMode: ThemeMode.light,
//       theme: ThemeData(
//         primarySwatch: Colors.teal,
//         fontFamily: GoogleFonts.lato().fontFamily,
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//       ),
//       // initialRoute: "/homepage",  $$$$ for now only
//       routes: {
//         "/": (context) => Login(),
//         '/homepage': (context) => Homepage(),
//         "/login": (context) => Login(),
//         "/tickets": (context) => Tickets()
//       },
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './tutorials/bottom_bar.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // $$$ for now only
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // initialRoute: "/homepage",  $$$$ for now only
      routes: {
        "/": (context) => BottomBar(),
      },
    );
  }
}
