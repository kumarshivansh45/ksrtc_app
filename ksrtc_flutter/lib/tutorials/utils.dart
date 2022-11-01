import 'package:geolocator/geolocator.dart';
import 'package:ksrtc_flutter/tutorials/track.dart';

void getLocation() async {
  var position = await Geolocator()
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  var last_position = await Geolocator().getLastKnownPosition();
  var latitude = position.latitude;
  var longitude = position.longitude;
  var output = "${latitude} , ${longitude}";
  location_data = output;
}
