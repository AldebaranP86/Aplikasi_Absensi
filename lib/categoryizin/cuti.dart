// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';

class CutiCategory extends StatefulWidget {
  const CutiCategory({super.key});

  @override
  State<CutiCategory> createState() => _CutiCategoryState();
}

class _CutiCategoryState extends State<CutiCategory> {
  TextEditingController datetimein = TextEditingController();
  TextEditingController datetimeout = TextEditingController();
  @override
  void initState() {
    datetimein.text ="";
    datetimeout.text ="";
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Pengajuan Cuti",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Untuk Pengajuan CUTI, Silahkan Isi Form Dibawah Ini",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.comment, color: Colors.amber,),
                      labelText: "keterangan",
                      border: OutlineInputBorder( 
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: datetimein,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_month, color: Colors.green,),
                      labelText: "tanggal cuti mulai",
                      border: OutlineInputBorder( 
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime?newDateTime = await showRoundedDatePicker(
                        context: context,
                        theme: ThemeData.light(),
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100)
                      );
                      if (newDateTime!=null) {
                          String formatDate = DateFormat("dd - MM - yyyy").format(newDateTime);
                        setState(() {
                          datetimein.text = formatDate;
                        });
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: datetimeout,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_month, color: Colors.redAccent,),
                      labelText: "tanggal cuti selesai",
                      border: OutlineInputBorder( 
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime?newDateTime = await showRoundedDatePicker(
                        theme: ThemeData.light(),
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100)
                      );
                      if (newDateTime!=null) {
                          String formatDate = DateFormat("dd - MM - yyyy").format(newDateTime);
                        setState(() {
                          datetimeout.text = formatDate;
                        });
                      }
                    },
                  ),
                ),
                SizedBox(height: 40,),
                OutlinedButton(
                  onPressed: () {
                   Navigator.of(context).pop();
                   },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                       ), child: const Text("Ajukan Izin",
                             style: TextStyle(
                              letterSpacing: 2,
                              fontSize: 16,
                                color: Colors.white,
                            ),
                           ),
                        ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}