import "package:flutter/material.dart";
import "package:fahrianggara_10220009/ui/home_page.dart";
import "package:fahrianggara_10220009/ui/pasien/pasien_page.dart";
import "package:fahrianggara_10220009/ui/pegawai/pegawai_page.dart";
import "package:fahrianggara_10220009/ui/poli/poli_page.dart";

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            accountName: Text("Fahri Anggara"), 
            accountEmail: Text("fahrianggara@mail.com")
          ),
          ListTile(
            iconColor: Colors.blue,
            leading: const Icon(Icons.home),
            title: const Text("Beranda"),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            iconColor: Colors.blue,
            leading: const Icon(Icons.local_hospital_rounded),
            title: const Text("Poli"),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const PoliPage()));
            },
          ),
          ListTile(
            iconColor: Colors.blue,
            leading: const Icon(Icons.people),
            title: const Text("Pegawai"),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const PegawaiPage()));
            },
          ),
          ListTile(
            iconColor: Colors.blue,
            leading: const Icon(Icons.account_box_sharp),
            title: const Text("Pasien"),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const PasienPage()));
            },
          ),
        ],
      ),
    );
  }
}
