import "package:fahrianggara_10220009/components/custom_button.dart";
import "package:fahrianggara_10220009/layout/header.dart";
import "package:fahrianggara_10220009/model/poli.dart";
import "package:fahrianggara_10220009/components/input_field.dart";
import "package:fahrianggara_10220009/ui/poli/poli_detail.dart";
import "package:flutter/material.dart";

class PoliFormEdit extends StatefulWidget {
  final Poli poli;
  const PoliFormEdit({super.key, required this.poli});

  @override
  State<PoliFormEdit> createState() => _PoliFormEditState();
}

class _PoliFormEditState extends State<PoliFormEdit> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaController.text = widget.poli.nama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "Edit Poli"),
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
      ),
    );
  }

  _tombolSimpan() {
    return CustomButton(text: "Update", backgroundType: BackgroundType.primary, onPressed: () {
      Poli poli = Poli(nama: _namaController.text);
      Navigator.pop(context);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
    });
  }
}
