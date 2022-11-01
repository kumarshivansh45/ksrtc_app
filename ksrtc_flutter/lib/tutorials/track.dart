import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import "./utils.dart";
// import "package:permission_handler/permission_handler.dart";

var location_data = "ooo";

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 100,
        color: Colors.yellow,
        child: Column(children: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              setState(() {
                getLocation();
                print("^^^");
              });
              //what to do when pressed;
            },
            child: Column(children: [Text('TextButton')]),
          ),
          Text("$location_data")
        ]));
  }
}
// class Track extends StatelessWidget {
//   const Track({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 50,
//         width: 100,
//         color: Colors.yellow,
//         child: Column(children: [
//           TextButton(
//             style: ButtonStyle(
//               foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
//             ),
//             onPressed: () {
//               setState
//               //what to do when pressed;
//             },
//             child: Column(children: [Text('TextButton')]),
//           ),
//           Text("$location_data")
//         ]));
//   }
// }
