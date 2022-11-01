import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        // child: Padding(
        // padding: EdgeInsets.all(10),
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 1.5,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: SizedBox(
            // width: 300,
            height: 500,
            child: Center(
                child: Image.asset(
              "./resources/bird_dark.png",
              fit: BoxFit.none,
              scale: 3,
            )),
          ),
        ),
      ),
      // ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         color: Colors.white,
//         child: Container(
//           height: 20,
//           width: 20,
//           child: Card(
//             color: Color.fromRGBO(255, 255, 153, 50),
//             semanticContainer: true,
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 Image.asset("./resources/bird_dark.png", scale: 3),
//                 Text(
//                   "Login",
//                   style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueGrey),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
