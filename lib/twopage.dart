import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'dart:async';
import 'dart:math';
import 'package:latlong2/latlong.dart';

class pagetwo extends StatefulWidget {
  const pagetwo({Key? key}) : super(key: key);

  @override
  _pagetwoState createState() => _pagetwoState();
}

class _pagetwoState extends State<pagetwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(37.066323069178004, 37.38332647314942),
                    zoom: 13.0,
                  ),
                  layers: [
                    TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c'],
                      attributionBuilder: (_) {
                        return Text("© OpenStreetMap contributors");
                      },
                    ),
                    // MarkerLayerOptions(
                    //   markers: [
                    //     Marker(
                    //       width: 80.0,
                    //       height: 80.0,
                    //       point: LatLng(51.5, -0.09),
                    //       builder: (ctx) => Container(
                    //         child: FlutterLogo(),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
