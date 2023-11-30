import 'package:attedance/guideabsensi/tab_absenkeluar.dart';
import 'package:attedance/guideabsensi/tab_absenmasuk.dart';
import 'package:attedance/guideabsensi/tab_pengajuancuti.dart';
import 'package:attedance/guideabsensi/tab_pengajuanizin.dart';
import 'package:attedance/guideabsensi/tab_pengajuansakit.dart';
import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  const TabHome({super.key});

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  List<Tab> myTabguide = [
                  const Tab(
                  text: "Absen Masuk",
                ),
                const Tab(
                  text: "Absen Keluar",
                ),
                const Tab(
                  text: "Pengajuan Cuti",
                ),
                const Tab(
                  text: "Pengajuan Izin",
                ),
                const Tab(
                  text: "Pengajuan Sakit",
                ),
];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: myTabguide.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: const Text(
            "Panduan Penggunaan Aplikasi Absensi SOS",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),),
            flexibleSpace: Container(
            width: 50,
            height: 40,
            color: Colors.white54,
          ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(35),
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white54,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.normal
                ),
                indicatorColor: Colors.blueAccent,
                indicatorWeight: 4,
                indicatorPadding: const EdgeInsets.all(6),
                tabs:myTabguide,
              ),
            ),
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: const TabBarView(
            children: [
              TabAbsenmasuk(),
              TabAbsenkeluar(),
              TabPengajuancuti(),
              TabPengajuanIzin(),
              TabPengajuanSakit()
            ]
          ),
        ),
      ),
    );
  }
}