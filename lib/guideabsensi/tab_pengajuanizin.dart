import 'package:flutter/material.dart';

class TabPengajuanIzin extends StatefulWidget {
  const TabPengajuanIzin({super.key});

  @override
  State<TabPengajuanIzin> createState() => _TabPengajuanIzinState();
}

class _TabPengajuanIzinState extends State<TabPengajuanIzin> {
  List pengajuanizin= [
    "1. Pertama masuk ke halaman pengajuan izin dengan mengklik tombol buat izin",
    "2. Setelah itu langkah pertama untuk pengajuan izin yaitu dengan memilih tipe izin berupa Cuti, Sakit, dan Izin",
    "3. Jika anda memilih bagian izin, maka langkah berikutnya yaitu isi keterangan izin",
    "4. Setelah mengisi keterangan izin, maka pilih jam izin dimulai",
    "5. Jika sudah mengisi jam izin dimulai, maka pilih juga jam izin selesai",
    "6. Jika dirasa data yang diisi sudah benar, maka selanjutnya klik tombol ajukan izin",
    "7. Maka anda telah berhasil melakukan pengajuan izin",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListView.builder(
            itemCount: pengajuanizin.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(pengajuanizin[index])),
              );
            }),
              ],
          ),
    );
  }
}