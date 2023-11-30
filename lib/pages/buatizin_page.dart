// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BuatIzinPage extends StatefulWidget {
  const BuatIzinPage({super.key});

  @override
  State<BuatIzinPage> createState() => _BuatIzinPageState();
}

class _BuatIzinPageState extends State<BuatIzinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Pengajuan Izin"),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Klik Tombol Dibawah ini Untuk Memilih Tipe Izin",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return BuatIzinPage();
                              })
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ), child: const Text("Cuti",
                            style: TextStyle(
                              fontSize: 17,
                              letterSpacing: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                  OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return BuatIzinPage();
                              })
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ), child: const Text("Izin",
                            style: TextStyle(
                              fontSize: 17,
                              letterSpacing: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                  OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return BuatIzinPage();
                              })
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ), child: const Text("Sakit",
                            style: TextStyle(
                              fontSize: 17,
                              letterSpacing: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}