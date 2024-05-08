import 'package:fahrianggara_10220009/components/custom_button.dart';
import 'package:fahrianggara_10220009/layout/header.dart';
import 'package:fahrianggara_10220009/model/pegawai.dart';
import 'package:fahrianggara_10220009/components/card_item.dart';
import 'package:fahrianggara_10220009/ui/pegawai/pegawai_form_edit.dart';
import 'package:flutter/material.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "Detail Pegawai"),
      body: Column(
        children: [
          CardItem(title: "NIP", subtitle: widget.pegawai.nip),
          CardItem(title: "Nama", subtitle: widget.pegawai.nama),
          CardItem(title: "Tanggal Lahir", subtitle: widget.pegawai.tglLahir),
          CardItem(title: "Nomer Telepon", subtitle: widget.pegawai.noTelpon),
          CardItem(title: "Email", subtitle: widget.pegawai.email),
          CardItem(title: "Password", subtitle: widget.pegawai.password),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [_buttonEdit(), const SizedBox(width: 8), _buttonDelete()],
            ),
          )
        ],
      )
    );
  }

  _buttonEdit() {
    return CustomButton(text: "Edit", backgroundType: BackgroundType.warning, onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => PegawaiFormEdit(pegawai: widget.pegawai)));
    });
  }

  _buttonDelete() {
    return CustomButton(text: "Hapus", backgroundType: BackgroundType.danger, onPressed: () {

    });
  }
}