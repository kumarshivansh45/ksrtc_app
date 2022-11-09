import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:ksrtc_flutter/tutorials/styles.dart';

// class Dialog_box_1 extends StatelessWidget {
//   const Dialog_box_1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoAlertDialog(title: Text("Login required !"), actions: [
//       CupertinoDialogAction(child: Text("yes")),
//       CupertinoDialogAction(child: Text("yes")),
//     ]);
//   }
// }

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          elevation: 30,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          contentPadding: const EdgeInsets.all(10),
          // backgroundColor: Color.fromRGBO(255, 255, 153, 0.7),
          title: Text(
            'Login Required',
            style: Styles.headline1,
          ),
          content: Image.asset(
            "resources/login.gif",
            height: 125.0,
            width: 125.0,
          ),
          actions: <Widget>[
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "enter your 10 digit phone number",
                        labelText: "Phone",
                      )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                  child: TextFormField(
                      obscureText: true,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        hintText: "enter your password",
                        labelText: "password",
                      )),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan),
                ),
              ],
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
