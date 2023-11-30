import 'package:flutter/material.dart';

class TabPengajuancuti extends StatefulWidget {
  const TabPengajuancuti({super.key});

  @override
  State<TabPengajuancuti> createState() => _TabPengajuancutiState();
}

class _TabPengajuancutiState extends State<TabPengajuancuti> {
  List pengajuancuti = [
    "1. Pertama masuk ke halaman pengajuan izin dengan mengklik tombol buat izin",
    "2. Setelah itu langkah pertama untuk pengajuan izin yaitu dengan memilih tipe izin berupa Cuti, Sakit, dan Izin",
    "3. Jika anda memilih bagian cuti, maka langkah berikutnya yaitu isi keterangan cuti",
    "4. Setelah mengisi keterangan cuti, maka pilih tanggal cuti dimulai",
    "5. Jika sudah mengisi tanggal cuti dimulai, maka pilih juga tanggal cuti selesai",
    "6. Jika dirasa data yang diisi sudah benar, maka selanjutnya klik tombol ajukan izin",
    "7. Maka anda telah berhasil melakukan pengajuan cuti",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        ListView.builder(
          itemCount: pengajuancuti.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,

          itemBuilder: (context, index) {
            return ListTile(
              title: Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(pengajuancuti[index])),
            );
          }),
          ],
        ),
    );
  }
}