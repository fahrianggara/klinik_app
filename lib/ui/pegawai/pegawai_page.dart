import 'package:fahrianggara_10220009/layout/sidebar.dart';
import 'package:fahrianggara_10220009/model/pegawai.dart';
import 'package:fahrianggara_10220009/ui/pegawai/pegawai_form.dart';
import 'package:fahrianggara_10220009/ui/pegawai/pegawai_item.dart';
import 'package:flutter/material.dart';
import 'package:fahrianggara_10220009/layout/header.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: Header(
        title: "Data Pegawai", 
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PegawaiForm()));
            },
          ),
        ]
      ),
      body: ListView(
        children: [
          PegawaiItem(pegawai: Pegawai(
            nip: "10220009", 
            nama: "Fahri Anggara", 
            tglLahir: "2003-12-30",
            noTelpon: "081234567890",
            email: "fahrianggara@gmail.com", 
            password: "password"
          )),
          PegawaiItem(pegawai: Pegawai(
            nip: "10220010", 
            nama: "Meifa Nur Salsa Bilah", 
            tglLahir: "2004-05-06",
            noTelpon: "081234567891",
            email: "meifasalsa@gmail.com", 
            password: "password"
          )),
        ],
      ),
    );
  }
}
