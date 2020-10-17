import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MapPage());
}

class MapPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<mapsPage> {
  GoogleMapController myController;
  // This widget is the root of your application.

  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(21.1454, 79.2882),
          zoom: 14.0,
        ),
        onMapCreated: (GoogleMapController controller) {
          myController = controller;
        },
      ),
    );
  }
}
