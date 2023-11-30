// import 'package:attedance/main.dart';
// import 'package:flutter/material.dart';
// import 'package:map_camera_flutter/map_camera_flutter.dart';

// // void main() async{
// //   WidgetsFlutterBinding.ensureInitialized();
// //   final cameras = await availableCameras();
// //   final firstCamera = cameras.first;
// //   runApp( MyApp(camera: firstCamera,));
// // }
// class TakeCameraMap extends StatefulWidget {
//   const TakeCameraMap({super.key, required this.title, required this.camera});
//   final CameraDescription camera;


//   final String title;

//   @override
//   State<TakeCameraMap> createState() => _TakeCameraMapState();
// }



// class _TakeCameraMapState extends State<TakeCameraMap> {
//     late final CameraDescription camera;
    


//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: MapCameraLocation(
//         camera: widget.camera,
//         onImageCaptured: (ImageAndLocationData data){
//           print('Captured image path: ${data.imagePath}');
//           print('Latitude: ${data.latitude}');
//           print('Longitude: ${data.longitude}');
//           print('Location name: ${data.locationName}');
//           print('Sublocation: ${data.subLocation}');
//         },
//       ),
//     );
//   }
// }