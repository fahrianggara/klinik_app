import 'package:fahrianggara_10220009/components/custom_button.dart';
import 'package:fahrianggara_10220009/layout/header.dart';
import 'package:fahrianggara_10220009/model/poli.dart';
import 'package:fahrianggara_10220009/components/card_item.dart';
import 'package:fahrianggara_10220009/ui/poli/poli_form_edit.dart';
import 'package:flutter/material.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: "Detail Poli"),
      body: Column(
        children: [
          CardItem(title: "Poli", subtitle: widget.poli.nama),
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
      Navigator.push(context, MaterialPageRoute(builder: (context) => PoliFormEdit(poli: widget.poli)));
    });
  }

  _buttonDelete() {
    return CustomButton(text: "Hapus", backgroundType: BackgroundType.danger, onPressed: () {

    });
  }
}