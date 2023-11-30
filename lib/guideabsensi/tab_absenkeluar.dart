import 'package:flutter/material.dart';

class TabAbsenkeluar extends StatefulWidget {
  const TabAbsenkeluar({super.key});

  @override
  State<TabAbsenkeluar> createState() => _TabAbsenkeluarState();
}

class _TabAbsenkeluarState extends State<TabAbsenkeluar> {
    List absenkeluar= [
      "1. Pastikan anda masih berada di lokasi kerja yang telah ditentukan Ketika klik absen keluar",
      "2. Pertama masuk ke halaman absen dengan mengklik tombol absensi",
      "3. Setelah itu langkah pertama untuk absen yaitu mengambil gambar dengan cara mengklik tombol take snapshot",
      "4. Lalu setelah gambar berhasil diambil maka langkah tidak diperlukan untuk mengisi keterangan",
      "5. pada bagian bawah keterangan akan muncul titik lokasi dimana anda melakukan absensi",
      "6. Jika sudah mengkikuti langkah-langkah diatas maka klik tombol absen keluar",
      "7. Maka anda telah berhasil melakukan absensi keluar",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        ListView.builder(
          itemCount: absenkeluar.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              title: Container(
                padding: const EdgeInsets.only(top: 10),
                child: Text(absenkeluar[index])),
            );
          }),
          ]
        ),
    );
  }
}