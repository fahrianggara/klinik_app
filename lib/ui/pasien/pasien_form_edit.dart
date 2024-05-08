import "package:fahrianggara_10220009/components/custom_button.dart";
import "package:fahrianggara_10220009/components/input_field.dart";
import "package:fahrianggara_10220009/layout/header.dart";
import "package:fahrianggara_10220009/model/pasien.dart";
import "package:fahrianggara_10220009/ui/pasien/pasien_detail.dart";
import "package:flutter/material.dart";

class PasienFormEdit extends StatefulWidget {
  final Pasien pasien;
  const PasienFormEdit({super.key, required this.pasien});

  @override
  State<PasienFormEdit> createState() => _PasienFormEditState();
}

class _PasienFormEditState extends State<PasienFormEdit> {
  final _formKey = GlobalKey<FormState>(),
    _nomorRmController = TextEditingController(),
    _namaController = TextEditingController(),
    _tanggalLahirController = TextEditingController(),
    _nomorTelponController = TextEditingController(),
    _alamatController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _nomorRmController.text = widget.pasien.nomorRm;
      _namaController.text = widget.pasien.nama;
      _tanggalLahirController.text = widget.pasien.tglLahir;
      _nomorTelponController.text = widget.pasien.noTelpon;
      _alamatController.text = widget.pasien.alamat;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "Edit Pasien"),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputField(labelText: "Nomor RM", 
                      controller: _nomorRmController),
                    const SizedBox(height: 5),
                    InputField(labelText: "Nama", 
                      controller: _namaController),
                    const SizedBox(height: 5),
                    InputField(labelText: "Tanggal Lahir", 
                      controller: _tanggalLahirController),
                    const SizedBox(height: 5),
                    InputField(labelText: "Nomer Telpon", 
                      controller: _nomorTelponController),
                    const SizedBox(height: 5),
                    InputField(labelText: "Alamat", 
                      controller: _alamatController),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _tombolSimpan() {
    return CustomButton(text: "Update", backgroundType: BackgroundType.primary, onPressed: () {
      Pasien pasien = Pasien(
        nomorRm: _nomorRmController.text,
        nama: _namaController.text,
        tglLahir: _tanggalLahirController.text,
        noTelpon: _nomorTelponController.text,
        alamat: _alamatController.text,
      );

      Navigator.pop(context);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PasienDetail(pasien: pasien)));
    });
  }
}
