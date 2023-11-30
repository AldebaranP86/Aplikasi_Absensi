// ignore_for_file: prefer_const_constructors

import 'package:attedance/pages/absensi_page.dart';
import 'package:attedance/pages/izin_page.dart';
import 'package:attedance/pages/profile_page.dart';
import 'package:attedance/guideabsensi/tab_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List<Tab> myTab = [
                  const Tab(
                  text: "Panduan",
                  icon: Icon(Icons.chrome_reader_mode, color: Colors.lime, size: 40),
                ),
                const Tab(
                  text: "Absensi",
                  icon: Icon(Icons.work, color: Colors.lightGreenAccent, size: 40),
                ),
                const Tab(
                  text: "Pengajuan Izin",
                  icon: Icon(Icons.work_off, color: Colors.orangeAccent, size: 40),
                ),
];

// logout user
void signOutUser () {
  showDialog(
    // barrierColor: Colors.blue,
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("CONFIRM!",
        style: TextStyle(
        ),
        ),
        content: Text("Are you Sure?",
        style: TextStyle(
          fontStyle: FontStyle.italic
        ),
        ),
        actions: [
          OutlinedButton(
            onPressed: () {
             Navigator.pop(context);
            },
            child: Text("No")),
          OutlinedButton(
            onPressed: () {
             FirebaseAuth.instance.signOut();
             Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.redAccent
            ),
             child: Text("Yes")),
        ],
      );
    });
}

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeigh = MediaQuery.of(context).size.height;


    final myAppBar = AppBar(
          title: const Text("DASHBOARD",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 4,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: signOutUser,
              icon: Icon(Icons.logout,color: Colors.white,)),
          ],

          leading: IconButton(onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return ProfilePage();
              })
            );
          }, icon: Icon(Icons.person, color: Colors.white,)),
          
          flexibleSpace: Container(
            height: mediaQueryHeigh * 0.13,
            color: Colors.black54,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(140),
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white54,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal
              ),
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.all(1),
              labelPadding: EdgeInsets.all(10),
              overlayColor: MaterialStatePropertyAll(Colors.white60),
              tabs:myTab,
            ),
          ),
        );

    // final bodyHeight = mediaQueryHeigh - myAppBar.preferredSize.height - MediaQuery.of(context).padding.top;
    return DefaultTabController(
      initialIndex: 1,
      length: myTab.length,
      child: Scaffold(
        appBar: myAppBar,
        

      body: const TabBarView(
        children: [
          TabHome(),
          AbsensiPage(),
          IzinPage(),
        ],
        ),
      ),
    );
  }
}