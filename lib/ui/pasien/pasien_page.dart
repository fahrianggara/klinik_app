import 'package:fahrianggara_10220009/components/card_item.dart';
import 'package:fahrianggara_10220009/layout/sidebar.dart';
import 'package:fahrianggara_10220009/model/pasien.dart';
import 'package:fahrianggara_10220009/ui/pasien/pasien_form.dart';
import 'package:fahrianggara_10220009/ui/pasien/pasien_item.dart';
import 'package:flutter/material.dart';
import 'package:fahrianggara_10220009/layout/header.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: Header(
        title: "Data Pasien", 
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PasienForm()));
            },
          ),
        ]
      ),
      body: ListView(
        children: [
          PasienItem(pasien: Pasien(nomorRm: "12-31-32", nama: "Ilham Ramadan", tglLahir: "2003-04-12", noTelpon: "08912312141", alamat: "Jl. Raya Kediri No. 12")),
          PasienItem(pasien: Pasien(nomorRm: "12-12-12", nama: "Soraka Zex", tglLahir: "2000-12-30", noTelpon: "0897123132", alamat: "Jl. Duren 01, Depok.")),
        ],
      ),
    );
  }
}
