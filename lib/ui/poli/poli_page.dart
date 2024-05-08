import 'package:fahrianggara_10220009/layout/sidebar.dart';
import 'package:fahrianggara_10220009/layout/header.dart';
import 'package:fahrianggara_10220009/model/poli.dart';
import 'package:fahrianggara_10220009/ui/poli/poli_form.dart';
import 'package:fahrianggara_10220009/ui/poli/poli_item.dart';
import 'package:flutter/material.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: Header(
        title: "Data Poli", 
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PoliForm()));
            },
          ),
        ]
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(nama: "Umum")),
          PoliItem(poli: Poli(nama: "Gigi")),
          PoliItem(poli: Poli(nama: "Kandungan")),
          PoliItem(poli: Poli(nama: "Anak")),
        ],
      ),
    );
  }
}
