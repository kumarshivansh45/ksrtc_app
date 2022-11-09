import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import "package:ksrtc_flutter/tutorials/utils.dart";

// import "package:permission_handler/permission_handler.dart";

var device_identifier = "ooo";

class DeviceData extends StatefulWidget {
  const DeviceData({super.key});

  @override
  State<DeviceData> createState() => _DeviceDataState();
}

class _DeviceDataState extends State<DeviceData> {
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
                // getLocation();
                print("=========================================");
                getId();
                ip_locator();
                print("=========================================");
              });
              //what to do when pressed;
            },
            child: Column(children: [Text('TextButton')]),
          ),
          Text("$device_identifier")
        ]));
  }
}
