import 'package:fahrianggara_10220009/components/custom_button.dart';
import 'package:fahrianggara_10220009/layout/header.dart';
import 'package:fahrianggara_10220009/model/pasien.dart';
import 'package:fahrianggara_10220009/components/card_item.dart';
import 'package:fahrianggara_10220009/ui/pasien/pasien_form_edit.dart';
import 'package:flutter/material.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "Detail Pasien"),
      body: Column(
        children: [
          CardItem(title: "Nomor RM", subtitle: widget.pasien.nomorRm),
          CardItem(title: "Nama", subtitle: widget.pasien.nama),
          CardItem(title: "Tanggal Lahir", subtitle: widget.pasien.tglLahir),
          CardItem(title: "Nomer Telepon", subtitle: widget.pasien.noTelpon),
          CardItem(title: "Alamat", subtitle: widget.pasien.alamat),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [_buttonEdit(), const SizedBox(width: 8), _buttonDelete()],
            ),
          )
        ],
      ),
    );
  }

  _buttonEdit() {
    return CustomButton(text: "Edit", backgroundType: BackgroundType.warning, onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => PasienFormEdit(pasien: widget.pasien)));
    });
  }

  _buttonDelete() {
    return CustomButton(text: "Hapus", backgroundType: BackgroundType.danger, onPressed: () {

    });
  }
}
