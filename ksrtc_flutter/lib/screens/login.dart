import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Container(
          height: 20,
          width: 20,
          child: Card(
            color: Color.fromRGBO(255, 255, 153, 50),
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Image.asset("./resources/bird_dark.png", scale: 3),
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
              ],
            ),
          ),
        ));
  }
}
