// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:attedance/pages/camera_with_map.dart';
import 'package:flutter/material.dart';

class AbsensiPage extends StatefulWidget {
  const AbsensiPage({super.key});

  @override
  State<AbsensiPage> createState() => _AbsensiPageState();
}

class _AbsensiPageState extends State<AbsensiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            children: [
              ClipOval(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[100],
                  child: const Center(child: Icon(Icons.work_off, color: Colors.green,),),
                ),
              ),
              const SizedBox(width: 10,),
              const Column(
                children: [
                  Text(
                    "Riwayat Absensi Bulan Ini",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    )
                ],
              )
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(4, 8),
                ),
              ]
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      Icon(Icons.boy, size: 70, color: Colors.blue,),
                      Text(
                        "Hadir", 
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                      ),
                    ),
                      SizedBox(height: 10),
                      Text("5")
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return CameraWithMap();
                    })
                  );
                },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shadowColor: Colors.grey,
                    elevation: 10,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                      )
                    ), child: const Text(
                        "Absensi",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 3,
                        color: Colors.white,
                      ),
                    ),
                ),
            ],
          ),
          const SizedBox(height: 20),
        Divider(
          color: Colors.grey[300],
          thickness: 2,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "List Absensi Karyawan",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            TextButton(onPressed: () {

            }, child: const Text("See More"))
          ],
        ),
        const SizedBox(height: 10,),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(4, 8)
                      )
                    ]
                  ),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                      const Text(
                        "Masuk :",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text("1. Tosa Ramadhan"),
                      Text("${DateTime.now()}"),
                      const Text("2. Aldebaran"),
                      Text("${DateTime.now()}"),
                      const SizedBox(height: 10),
                      const Text(
                        "Keluar :",
                         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text("1. Tosa Ramadhan"),
                      Text("${DateTime.now()}"),
                      const Text("2. Aldebaran"),
                      Text("${DateTime.now()}"),
                      ],
                    ),
                   );
                  }
                ),
        ],
      ),












      
      // body: SingleChildScrollView(
      //   child: SafeArea(
      //     child: Card(
      //       shadowColor: Colors.grey[800],
      //       shape: RoundedRectangleBorder(
      //            borderRadius: BorderRadius.circular(20)
      //           ),
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             const Text(
      //               "Riwayat Absensi Bulan ini",
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold
      //                 ),
      //               ),
      //             const SizedBox(height: 10,),
      //             Container(
      //               padding: EdgeInsets.all(12),
      //               child: const Center(
      //                 child: Card(
      //                   color: Colors.white,
      //                   child: SizedBox(
      //                     width: 600,
      //                     height: 160,
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Icon(
      //                           Icons.boy, size: 70, color: Colors.blueAccent,
      //                           ),
      //                           Text("Hadir"),
      //                           SizedBox(height: 10,),
      //                           Text("1")
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             const SizedBox(height: 10,),
      //             Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: OutlinedButton(
      //                       onPressed: () {
      //                         Navigator.of(context).push(
      //                           MaterialPageRoute(builder: (context) {
      //                             return IsiAbsensiPage();
      //                           })
      //                         );
      //                       },
      //                       style: OutlinedButton.styleFrom(
      //                         backgroundColor: Colors.blue,
      //                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      //                         shape: RoundedRectangleBorder(
      //                           borderRadius: BorderRadius.circular(20)
      //                         )
      //                       ), child: const Text("Absensi",
      //                         style: TextStyle(
      //                           fontSize: 17,
      //                           letterSpacing: 1,
      //                           color: Colors.white,
      //                         ),
      //                       ),
      //                       ),  
      //               // ElevatedButton(onPressed: () {
      //               //   Navigator.of(context).push(
      //               //     MaterialPageRoute(builder: (context) {
      //               //       return IsiAbsensiPage();
                  
      //               //     },)
      //               //   );
      //               // }, child: const Text("Absensi")
      //               // ),
      //             ),
      
                  
      //                 SingleChildScrollView(
      //                   scrollDirection: Axis.horizontal,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [
      //                       DataTable(columns: const [
      //                       DataColumn(label: Text("No")),
      //                       DataColumn(label: Text("Tanggal")),
      //                       DataColumn(label: Text("Jam Masuk")),
      //                       DataColumn(label: Text("Keterangan")),
      //                       DataColumn(label: Text("Jam Keluar")),
      //                       ], rows: [
      //                         const DataRow(cells: [
      //                         DataCell(Text("1")),
      //                         DataCell(Text("01 nov")),
      //                         DataCell(Text("09.00")),
      //                         DataCell(Text("-----------")),
      //                         DataCell(Text("05.30")),
      //                       ]),
      //                     ]),
      //                     ],
      //                   ),
      //                 ),
                  
                    
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}