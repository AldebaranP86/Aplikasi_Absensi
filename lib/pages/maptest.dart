import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_camera_flutter/map_camera_flutter.dart';


class MapTest extends StatefulWidget {
  const MapTest({super.key});

  @override
  State<MapTest> createState() => _MapTestState();
}

class _MapTestState extends State<MapTest> {
  final mapController = MapController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: MapController(),
        options: MapOptions(
          center: LatLng(-6.227777, 106.810544, ),
          zoom: 9.2,
          // onMapReady: () {
          //   mapController.mapEventStream.listen((event) {});
          // }
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution('OpeningStreetMap contributor',
              onTap: () {
                Uri.parse('https://openstreetmap.org/copyright');
              },
              )
            ]),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(30, 40),
                  width: 80,
                  height: 80,
                  builder: (BuildContext context) { return GestureDetector(
                    onTap: () {
                      print("tap on start");
                    },
                    
                  );
                  },
                  
                 ),
              ],
            ),
              PolygonLayer(
                polygons: [
                  Polygon(
                    points: [LatLng(30, 40), LatLng(20, 50), LatLng(25, 45)],
                    color: Colors.blue,
                    isFilled: true,
                  ),
                ],
              ),
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: [LatLng(30, 40), LatLng(20, 50), LatLng(25, 45)],
                    color: Colors.blue,
                  ),
                ],
              ),
              CircleLayer(
  circles: [
    CircleMarker(
      point: LatLng(51.50739215592943, -0.127709825533512),
      radius: 10000,
      useRadiusInMeter: true,
    ),
  ],
),

        ],
        ),
    );
  }
}