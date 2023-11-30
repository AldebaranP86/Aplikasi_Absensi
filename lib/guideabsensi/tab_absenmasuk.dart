// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TabAbsenmasuk extends StatefulWidget {
  const TabAbsenmasuk({super.key});

  @override
  State<TabAbsenmasuk> createState() => _TabAbsenmasukState();
}

class _TabAbsenmasukState extends State<TabAbsenmasuk> {
    List absenmasuk= [
    "1. Pastikan anda sudah berada di lokasi kerja yang telah ditentukan ",
    "2. masuk ke halaman absen dengan mengklik tombol absensi",
    "3. Setelah itu langkah pertama untuk absen yaitu mengambil gambar dengan cara mengklik tombol take snapshot",
    "4. Lalu setelah gambar berhasil diambil maka langkah selanjutnya yaitu isi keterangan absensi",
    "5. pada bagian bawah keterangan akan muncul titik lokasi dimana anda melakukan absensi",
    "6. Jika sudah mengkikuti langkah-langkah diatas maka klik tombol absen masuk",
    "7. Maka anda telah berhasil melakukan absensi masuk"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        ListView.builder(
          itemCount: absenmasuk.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        
          itemBuilder: (context, index) {
            return ListTile(
              title: Container(
                padding: EdgeInsets.only(top: 10,),
                  child: Text(absenmasuk[index])));
          }
          ),
        ]
      )
    );
  }
}