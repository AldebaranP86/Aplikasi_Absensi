// // ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapSample extends StatefulWidget {
//   const MapSample({super.key});

//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   final Completer<GoogleMapController> _controller =
//       Completer<GoogleMapController>();

//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );

//   static const CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);

//   List<LatLng> _listlatlng = [
//     LatLng(-6.300641, 106.814095),
//     LatLng(37.43296265331129, -122.08832357078792)
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("User Location"),
//       ),
//       body: GoogleMap(
//         mapType: MapType.terrain,
//         markers: _listlatlng.map((e) => customMarker(e)).toSet(),
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () async {
//           final GoogleMapController controller = await _controller.future;
//           controller.animateCamera(
//             CameraUpdate.newLatLng(
//               const LatLng(-6.300641, 106.814095),
//               )
//             );
//         },
//         label: const Text('To the lake!'),
//         icon: const Icon(Icons.directions_boat),
//       ),
//     );
//   }

//   Marker customMarker(LatLng e) {
//     return Marker(
//         markerId: MarkerId(e.hashCode.toString()),
//         position: e,
//           draggable: true,
//           onDragEnd: (e) {
//             print(e.toJson());
//           }
//           );
//   }

//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

// class MapSample extends StatefulWidget {
//   const MapSample({super.key});

//   @override
//   State<MapSample> createState() => _MapSampleState();
// }

// class _MapSampleState extends State<MapSample> {
//   Location _locationController = new Location();

//   static const LatLng _pGooglePlex = LatLng(-6.227777, 106.810544);
//   // static const LatLng _pApplePark = LatLng(37.3346, -122.0090);
//   LatLng? _currentP = null;

//   @override
//   void initState() {
//     super.initState();
//     getLocationUpdates();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _currentP == null
//           ? const Center(
//               child: Text("Loading. . ."),
//             )
//           : GoogleMap(
//               initialCameraPosition:
//                   const CameraPosition(target: _pGooglePlex, zoom: 13),
//               markers: {
//                 const Marker(
//                     markerId: const MarkerId("_currentLocation"),
//                     icon: BitmapDescriptor.defaultMarker,
//                     position: _pGooglePlex),
//                 // Marker(
//                 //     markerId: MarkerId("_sourceLocation"),
//                 //     icon: BitmapDescriptor.defaultMarker,
//                 //     position: _pApplePark),
//               },
//             ),
//     );
//   }

//   Future<void> getLocationUpdates() async {
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;

//     _serviceEnabled = await _locationController.serviceEnabled();
//     if (_serviceEnabled) {
//       _serviceEnabled = await _locationController.requestService();
//     } else {
//       return;
//     }

//     _permissionGranted = await _locationController.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await _locationController.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }

//     _locationController.onLocationChanged
//         .listen((LocationData currentLocation) {
//       if (currentLocation.latitude != null &&
//           currentLocation.longitude != null) {
//         setState(() {
//           _currentP =
//               LatLng(currentLocation.latitude!, currentLocation.longitude!);
//           print(_currentP);
//         });
//       }
//     });
//   }
// }

// ignore_for_file: library_private_types_in_public_api, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
 
 
 
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}
 
class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;
  Location currentLocation = Location();
  final Set<Marker> _markers={};
 
 
  void getLocation() async{
    var location = await currentLocation.getLocation();
    currentLocation.onLocationChanged.listen((LocationData loc){
 
      _controller?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(loc.latitude ?? 0.0,loc.longitude?? 0.0),
        zoom: 20,
      )));
      setState(() {
        _markers.add(Marker(markerId: const MarkerId('Home'),
            position: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0)
        ));
      });
       });
  }
 
  @override
  void initState(){
    super.initState();
    setState(() {
      getLocation();
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Location"),
      ),
      body: Container(
        height: 500,
        width: 500,
        child:GoogleMap(
          zoomControlsEnabled: false,
          initialCameraPosition:const CameraPosition(
            target: LatLng(48.8561, 2.2930),
            zoom: 12.0,
          ),
          onMapCreated: (GoogleMapController controller){
            _controller = controller;
          },
          markers: _markers,
        ) ,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.location_searching,color: Colors.white,),
        onPressed: (){
          getLocation();
        },
      ),
    );
  }
}