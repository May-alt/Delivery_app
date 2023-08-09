import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(33.892166,9.561555499999997),
    zoom: 13,
  );

  static const CameraPosition _kLake = CameraPosition(
     // bearing: 192.8334901395799,
      target: LatLng(33.892166,9.561555499999997),
     // tilt: 59.440717697143555,
      zoom: 14
  );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

       body: SafeArea(
        child: Container(
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ),
    );
  }
}


