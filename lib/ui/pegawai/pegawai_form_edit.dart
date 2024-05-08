import "package:fahrianggara_10220009/components/custom_button.dart";
import "package:fahrianggara_10220009/layout/header.dart";
import "package:fahrianggara_10220009/components/input_field.dart";
import "package:fahrianggara_10220009/model/pegawai.dart";
import "package:fahrianggara_10220009/ui/pegawai/pegawai_detail.dart";
import "package:flutter/material.dart";

class PegawaiFormEdit extends StatefulWidget {
  final Pegawai pegawai;
  const PegawaiFormEdit({super.key, required this.pegawai});

  @override
  State<PegawaiFormEdit> createState() => _PegawaiFormEditState();
}

class _PegawaiFormEditState extends State<PegawaiFormEdit> {
  final _formKey = GlobalKey<FormState>(),
    _nomerIndukController = TextEditingController(),
    _namaController = TextEditingController(),
    _tanggalLahirController = TextEditingController(),
    _nomerTelponController = TextEditingController(),
    _emailController = TextEditingController(),
    _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _nomerIndukController.text = widget.pegawai.nip;
      _namaController.text = widget.pegawai.nama;
      _tanggalLahirController.text = widget.pegawai.tglLahir;
      _nomerTelponController.text = widget.pegawai.noTelpon;
      _emailController.text = widget.pegawai.email;
      _passwordController.text = widget.pegawai.password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "Edit Pegawai"),
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
                    InputField(labelText: "Nomer Induk", 
                      controller: _nomerIndukController),
                    const SizedBox(height: 5),
                    InputField(labelText: "Nama", 
                      controller: _namaController),
                    const SizedBox(height: 5),
                    InputField(labelText: "Tanggal Lahir", 
                      controller: _tanggalLahirController),
                    const SizedBox(height: 5),
                    InputField(labelText: "Nomer Telpon", 
                      controller: _nomerTelponController),
                    const SizedBox(height: 5),
                    InputField(labelText: "Email", 
                      controller: _emailController),
                    const SizedBox(height: 5),
                    InputField(labelText: "Password", obscureText: true, 
                      controller: _passwordController),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              _tombolSimpan(),
            ],
          ),
        ),
      )
    );
  }

  _tombolSimpan() {
    return CustomButton(text: "Update", backgroundType: BackgroundType.primary, onPressed: () {
      Pegawai pegawai = Pegawai(
        nip: _nomerIndukController.text,
        nama: _namaController.text,
        tglLahir: _tanggalLahirController.text,
        noTelpon: _nomerTelponController.text,
        email: _emailController.text,
        password: _passwordController.text
      );
        
      Navigator.pop(context);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PegawaiDetail(pegawai: pegawai)));
    });
  }
}
