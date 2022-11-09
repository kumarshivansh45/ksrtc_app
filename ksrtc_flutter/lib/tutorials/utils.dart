import 'package:geolocator/geolocator.dart';
import 'package:ksrtc_flutter/tutorials/track.dart';
import "package:device_info_plus/device_info_plus.dart";
import 'dart:io' show Platform;
import 'package:network_info_plus/network_info_plus.dart';

void getLocation() async {
  var position = await Geolocator()
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  var last_position = await Geolocator().getLastKnownPosition();
  var latitude = position.latitude;
  var longitude = position.longitude;
  var output = "${latitude} , ${longitude}";
  location_data = output;
}

Future<String?> getId() async {
  var deviceInfo = DeviceInfoPlugin();
  if (Platform.isIOS) {
    // import 'dart:io'
    var iosDeviceInfo = await deviceInfo.iosInfo;
    print("device identifier : ${deviceInfo.iosInfo}");
    return iosDeviceInfo.identifierForVendor; // unique ID on iOS
  } else if (Platform.isAndroid) {
    var androidDeviceInfo = await deviceInfo.androidInfo;
    print("device identifier : ${androidDeviceInfo.id}");
    return androidDeviceInfo.id; // unique ID on Android
  }
}

void ip_locator() async {

  final info = NetworkInfo();
  var wifiIP = info.getWifiIP();
  print("IP ADDRESS ${wifiIP}");
}

