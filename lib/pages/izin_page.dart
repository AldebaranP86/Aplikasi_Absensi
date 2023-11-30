import 'package:attedance/categoryizin/cuti.dart';
import 'package:attedance/categoryizin/izin.dart';
import 'package:attedance/categoryizin/sakit.dart';
import 'package:flutter/material.dart';

class IzinPage extends StatefulWidget {
  const IzinPage({super.key});

  @override
  State<IzinPage> createState() => _IzinPageState();
}

class _IzinPageState extends State<IzinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            children: [
              ClipOval(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[100],
                  child: const Center(child: Icon(Icons.work_off, color: Colors.amber)),
                ),
              ),
              const SizedBox(width: 10,),
              const Column(
                children: [
                  Text(
                    "Riwayat Izin Bulan Ini",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    )
                ],
              )
            ],
          ),
          const SizedBox(height: 30,),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(4, 8)
                )
              ]
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    children: [
                      Icon(Icons.newspaper, size: 60, color: Colors.green,),
                      Text(
                        "Cuti",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text("0")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    children: [
                      Icon(Icons.notifications, size: 60, color: Colors.amber,),
                      Text(
                        "Izin",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                      ),
                    ),
                      SizedBox(height: 14,),
                      Text("0")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    children: [
                      Icon(Icons.medical_services, size: 60, color: Colors.red,),
                      Text(
                        "Sakit",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                      ),
                    ),
                      SizedBox(height: 10,),
                      Text("0")
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text("Silahkan Pilih Tipe Izin",
               style: TextStyle(
                 fontSize: 14,
                 fontWeight: FontWeight.bold
                  ),
                ),
          
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(4, 8),
                )
              ]
            ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  TextButton(onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const CutiCategory();
                      })
                    );

                  }, child: const Text(
                    "Cuti",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.grey,
              ),
              Column(
                children: [
                  TextButton(onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const IzinCategory();
                      }),
                    );
                  }, child: const Text(
                    "Izin",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.grey,
              ),
              Column(
                children: [
                  TextButton(onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const SakitCategory();
                      }),
                    );
                  }, child: const Text(
                    "Sakit",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
        Divider(
          color: Colors.grey[300],
          thickness: 2,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "List Pengajuan Izin Karyawan",
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
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(4, 8),
                      )
                    ]
                  ),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                      const Text(
                        "Cuti :",
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
                        "Izin :",
                         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text("1. Aldebaran"),
                      Text("${DateTime.now()}"),
                      const SizedBox(height: 10),
                      const Text(
                        "Sakit :",
                         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text("- "),
                      // Text("${DateTime.now()}"),
                      ],
                    ),
                   );
                  }
                ),
        ],
      ),
    );
  }
}