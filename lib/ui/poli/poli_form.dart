import "package:fahrianggara_10220009/components/custom_button.dart";
import "package:fahrianggara_10220009/layout/header.dart";
import "package:fahrianggara_10220009/components/input_field.dart";
import "package:fahrianggara_10220009/model/poli.dart";
import "package:fahrianggara_10220009/ui/poli/poli_detail.dart";
import "package:flutter/material.dart";

class PoliForm extends StatefulWidget {
  const PoliForm({super.key});

  @override
  State<PoliForm> createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "Tambah Poli"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: _formKey,
              child: InputField(labelText: "Nama Poli", controller: _namaController),
            ),
            const SizedBox(height: 5),
            _tombolSimpan(),
          ],
        ),
      )
    );
  }

  _tombolSimpan() {
    return CustomButton(text: "Simpan", backgroundType: BackgroundType.primary, onPressed: () {
      Poli poli = Poli(nama: _namaController.text);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
    });
  }
}
