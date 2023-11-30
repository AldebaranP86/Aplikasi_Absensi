import 'package:flutter/material.dart';

class TabPengajuanSakit extends StatefulWidget {
  const TabPengajuanSakit({super.key});

  @override
  State<TabPengajuanSakit> createState() => _TabPengajuanSakitState();
}

class _TabPengajuanSakitState extends State<TabPengajuanSakit> {
  List pengajuansakit= [
    "1. Pertama masuk ke halaman pengajuan izin dengan mengklik tombol buat izin",
    "2. Setelah itu langkah pertama untuk pengajuan izin yaitu dengan memilih tipe izin berupa Cuti, Sakit, dan Izin",
    "3. Jika anda memilih bagian sakit, maka langkah berikutnya yaitu isi keterangan sakit",
    "4. Setelah mengisi keterangan sakit, maka input gambar sakit, berupa surat saki",
    "5. Jika dirasa data yang diisi sudah benar, maka selanjutnya klik tombol ajukan izin",
    "6. Maka anda telah berhasil melakukan pengajuan Sakit",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        ListView.builder(
          itemCount: pengajuansakit.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              title: Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(pengajuansakit[index])),
            );
          }),
        ],
      ),
    );
  }
}