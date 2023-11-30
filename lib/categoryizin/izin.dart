// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IzinCategory extends StatefulWidget {
  const IzinCategory({super.key});

  @override
  State<IzinCategory> createState() => _IzinCategoryState();
}

class _IzinCategoryState extends State<IzinCategory> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    final format = DateFormat("hh:mm a");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Pengajuan Izin",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.white
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Untuk Pengajuan IZIN, Silahkan Isi Form Dibawah Ini",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20,),
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
                  child: DateTimeField(
                    format: format,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.access_time, color: Colors.green,),
                      labelText: "jam izin dimulai",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onShowPicker: (context, currentValue) async {
                      final time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(
                              currentValue ?? DateTime.now()));
                      return DateTimeField.convert(time);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: DateTimeField(
                    format: format,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.access_time, color: Colors.redAccent,),
                      labelText: "jam izin selesai",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onShowPicker: (context, currentValue) async {
                      final time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(
                              currentValue ?? DateTime.now()));
                      return DateTimeField.convert(time);
                    },
                  ),
                ),
                const SizedBox(height: 40,),
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