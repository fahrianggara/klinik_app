import "package:flutter/material.dart";
import "package:fahrianggara_10220009/layout/header.dart";
import "package:fahrianggara_10220009/layout/sidebar.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Sidebar(),
      appBar: Header(title: "Klinik Anggara"),
      body: Center(
        child: Text("Selamat datang di Klinik Anggara!"),
      ),
    );
  }
}

